/* =====================================================================
 * METROID: OTHER M -- CUTSCENE SUIT MODEL PATCH
 * IN-PLACE, SINGLE-WORD VERSION (final)
 *
 * Replaces file offset 0xCADC0 through 0xCAE87 (200 bytes / 50
 * instructions -- the entire vanilla room-ID decision tree, including
 * the instruction that routed non-Barrier cutscenes to the separate
 * model-337/252 logic at 0xCAE8C) in game-original.rel.
 *
 * All three outcomes are decided from ONE persistent per-save word:
 * the gear/suit bits at runtime address 0x80CA4E20 (gear_struct+0x00):
 *
 *     bit 0 (0x1)  Power
 *     bit 1 (0x2)  Varia
 *     bit 2 (0x4)  Gravity
 *
 *     0001 = 1 = Power only
 *     0011 = 3 = Varia
 *     0111 = 7 = Gravity
 *
 * Gravity is tested first, so states where only bit 2 is set among the
 * suit bits (e.g. 0x...5 seen in some Gravity cutscenes) still resolve
 * to Gravity. Only these three bits are examined; every other bit in
 * the word (other items) is ignored.
 *
 * Earlier versions also read gear_struct+0x08 (0x80CA4E28) and special-
 * cased the value 0x15 for cutscene dm65_02. Both are removed: +0x08
 * turned out to be missile-tank data (the bit 0 correlation with
 * Gravity was coincidental), and 0x15 already has bit 2 set, so it is
 * handled by the normal Gravity test.
 *
 * gear_struct_base is hardcoded (0x80CA4E20). This is safe ONLY because
 * this patch makes zero net change to game.rel's total file size -- BSS's
 * runtime address depends on the module's total size, and with zero
 * size change it lands exactly where vanilla places it.
 *
 * Build (assembler + objcopy only, no linker/Python needed):
 *     powerpc-linux-gnu-as -mbig -o cave.o cutscene_suit_model_patch.s
 *     powerpc-linux-gnu-objcopy -O binary cave.o cave.bin
 * Then splice cave.bin's exactly 200 bytes into game.rel at file offset
 * 0xCADC0 (decimal 51648):
 *     dd if=cave.bin of=game.rel bs=1 seek=51648 conv=notrunc
 * ===================================================================== */

    .text
    .align 2

    gear_struct_base = 0x80CA4E20   /* BSS+0x2fae0 */

suit_model_check:
    lis     %r5, gear_struct_base@ha
    addi    %r5, %r5, gear_struct_base@l   /* r5 = &gear_struct */
    lwz     %r6, 0(%r5)                    /* r6 = suit/gear bits */

    andi.   %r7, %r6, 4                    /* bit 2 = Gravity */
    bne     is_gravity

    andi.   %r7, %r6, 2                    /* bit 1 = Varia */
    bne     is_barrier

    li      %r3, 0xFC                      /* 252 = POWER */
    b       after

is_gravity:
    li      %r3, 0xFE                      /* 254 = GRAVITY */
    b       after

is_barrier:
    li      %r3, 0xFD                      /* 253 = BARRIER */

after:
    /* Falls through into padding, then into the unchanged vanilla code
     * at 0xCAE88 ("b 0xCAEE8"). No explicit branch needed. */

    /* --- pad to exactly 200 bytes (12 real instructions + 38 nops) --- */
    .rept   38
    nop
    .endr

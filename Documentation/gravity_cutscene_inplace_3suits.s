/* =====================================================================
 * METROID: OTHER M -- CUTSCENE SUIT MODEL PATCH (IN-PLACE, THREE-WAY)
 *
 * Replaces file offset 0xCADC0 through 0xCAE87 (200 bytes / 50
 * instructions -- the entire vanilla room-ID decision tree, including
 * the instruction that used to route non-Barrier-relevant cutscenes to
 * the separate model-337/252 logic at 0xCAE8C) in game-original.rel.
 *
 * Because that routing instruction is gone, this version does NOT rely
 * on 0xCAE8C at all -- it decides all three outcomes (Power/Barrier/
 * Gravity) directly from persistent per-save suit-progression flags,
 * the same way the Gravity case was already handled. (An earlier
 * in-place version only replaced the Barrier decision and left the
 * Power/337 path orphaned and unreachable, which incorrectly turned all
 * Power cutscenes into Barrier ones -- this version fixes that.)
 *
 * Discriminants used (both permanent, per-save flags -- part of the
 * same struct the "All Gear" Action Replay/Gecko cheat targets):
 *   gear_struct+0x08, bit 0  -- Gravity Suit obtained
 *   gear_struct+0x00, bit 1  -- Varia Suit obtained
 * Neither flag is ever cleared once set, and neither resets when a
 * cutscene is reloaded (unlike an earlier, discarded discriminant).
 *
 * The dm65_02 direct-Theater-load workaround (word 0 == 0x15) is
 * preserved unchanged; 0x15 has bit1 == 0, so it cannot be confused
 * with "Varia obtained".
 *
 * gear_struct_base is hardcoded (0x80CA4E20) rather than resolved via a
 * relocation. This is safe ONLY because this patch makes zero net
 * change to game.rel's total file size -- BSS's runtime address depends
 * on the module's total size, and with zero size change it is
 * guaranteed to land exactly where vanilla itself places it.
 *
 * Build (assembler only, no linker/Python needed):
 *     powerpc-linux-gnu-as -mbig -o cave.o gravity_cutscene_inplace_3way.s
 *     powerpc-linux-gnu-objcopy -O binary cave.o cave.bin
 *
 * Then splice cave.bin's exactly 200 bytes into game-original.rel at
 * file offset 0xCADC0 (decimal 51648), overwriting what's there:
 *     dd if=cave.bin of=game.rel bs=1 seek=51648 conv=notrunc
 * ===================================================================== */

    .text
    .align 2

    gear_struct_base = 0x80CA4E20   /* BSS+0x2fae0 */

suit_model_check:
    lis     %r5, gear_struct_base@ha
    addi    %r5, %r5, gear_struct_base@l   /* r5 = &gear_struct */

    lwz     %r6, 0(%r5)                    /* r6 = gear_struct+0x00 (word 0) */
    cmpwi   %r6, 0x15                      /* dm65_02 direct-Theater-load workaround */
    beq     is_gravity

    lwz     %r7, 8(%r5)                    /* r7 = gear_struct+0x08 */
    andi.   %r8, %r7, 1                    /* bit 0 = Gravity Suit obtained */
    bne     is_gravity

    andi.   %r8, %r6, 2                    /* bit 1 of word 0 = Varia Suit obtained */
    bne     is_barrier

    li      %r3, 0xFC                      /* 252 = POWER (neither suit obtained yet) */
    b       after

is_gravity:
    li      %r3, 0xFE                      /* 254 = GRAVITY */
    b       after

is_barrier:
    li      %r3, 0xFD                      /* 253 = BARRIER */

after:
    /* Falls through here into padding, then into the unchanged vanilla
     * code at 0xCAE88 ("b 0xCAEE8"). No explicit branch needed. */

    /* --- pad out to exactly 200 bytes (the original tree's size) --- */
    .rept   35
    nop
    .endr

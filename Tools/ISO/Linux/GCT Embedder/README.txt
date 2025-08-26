Easy Wii ISO .gct Cheat Embedder v1.00
Pack + Script by damysteryman/Team DARK
Powered by Wiimms ISO Tool v3.00a r7387 + Wiimms SZS Tool v1.54a r7393, by Wiimm

--------------------------------------

Credits to Wiimm for Wiimms ISO Tool + Wiimms SZS Tool, included in this pack

What is this?
This tool will allow you to easily embed a Gecko Ocarina Cheat .gct file into a
Wii .iso file as if it were part of the game itself.

This is useful if you want yout ocarina codes to always be available with your game,
especially in situations where you might not be able to run the homebrew ocarina cheat engine,
like when you are loaading the game directly from the Disc Channel without any homebrew,
or injecting it into a Wii VC channel on WiiU!

--------------------------------------

Instructions:
1. Get your .gct file that you want to embed into your .iso.
2. Put the .gct file in the same directory as your .iso.
3. Open terminal, go to the directory where your .iso is, and type:
	embedder.sh YOURISO.iso
4. ??? (Script will do its thing)
5. ...Profit? The Embedder will output an .iso file with "<iso-name> + GCT_EMBED.iso"

--------------------------------------

In case the previous method doesn't work, or the compiled ISO has issues with the GCT patches into the main.dol, do the following:

1. Run the "extract.sh" script with your .iso by running the following in terminal:
	extract.sh YOURISO.iso
2. Copy the main.dol file from the extracted .iso files (YOURISONAME/DATA/sys/main.dol) into the Gecko Loader folder.
3. Have a copy of your .gct file in the Gecko Loader folder.
4. Make a second copy of the main.dol file, name it patched.dol.
5. Enter the Gecko Loader folder in terminal and type this to open Gecko Loader:
	python GeckoLoader.py
If that doesn't work, try with:
	python main_ui.py
In the "Open DOL" option select the "main.dol" file, in "Open codes" select your .gct file, and then in "Destination" select the patched.dol as the output. Don't change anything from the "Options" section!
NOTE: You need Qt5 for Gecko Loader to run on a Linux machine.

6. Click on RUN. The "patched.dol" file should now have the patched GCT code into it.
7. Copy the patched.dol file to the same directory as GCT Embedder.
8. Rename patched.dol to main.dol
9. Go to your game's extracted files, search for the original main.dol file and replace it with the new one.
10. After copying the modified main.dol file, run the "create.sh" script with your .iso by running the following in terminal:
	create.sh YOURISO.iso
11. The script should now recompile the .iso with the main.dol patched by Gecko Loader, instead of the one patched by GCT Embedder.
12. Test the compiled ISO in the Dolphin emulator or real Wii. Enjoy!


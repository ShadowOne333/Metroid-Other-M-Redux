<p align="center">
  <img src="https://cdn2.steamgriddb.com/grid/ebb5571d17aed2a22603fa47825b4ce4.png">
</p>

# <p align="center">METROID: OTHER M REDUX</p>  
**<h4><p align="center">(Based on Other M - Maxximum Edition hack)</p>​</h4>**
---
## **Index**

* [**Prologue**](#prologue)

* [**Additional Info & Development**](#additional-info-and-development)

* [**Changelog**](#changelog)

* [**Patch & Use Instructions**](#instructions)
  * [**Riivolution Method**](#riivolution-method)
  * [**Create A New ISO**](#create-a-new-iso)

* [**TODO & Known Issues**](#todo-and-known-issues)

* [**Credits & Tools**](#credits-and-tools)

* [**Project Licence**](#license)

-------------------

## Prologue

Lately, I've been delving into some of the improvement hacks for the Metroid series over the years, and while I have already played and downloaded a few of them, there's one in particular that caught my interest.

I checked the changelog of the game, and many of the changes are great, like a properly colored Gravity Suit once activated, Missile usage while in 3rd person, new textures for Samus based on Smash WiiU, properly colored enemies based on other Metroid games, etc.

However, there were still some changes that I found odd or somewhat badly implemented, which I touched upon:

* The cutscenes for Maxximum Edition were heavily reworked to deal with some of the idiotic story points that are deeply hated from this game. Still though, some of the cutscene editing is either decent, or bad at times (with all due respect to the original devs), with some really choppy cutoffs and some of the new voice overs just sound really out off place. While I don't think most of Samus' inner monologues are bad per-se, as some do add to the story, complete removal of most of them feels a little excessive.

* There's also the OST being completely changed to more familiar tunes from the Metroid franchise (mainly seems to be Prime and Fusion tracks more than others). While this might be welcomed by some, I feel like just shoehorning tracks from other games into Other M takes away from the experience, at least to me.

For me, these two points are the only ones I have a problem with.

However, I'd like to further rework the audio and videos of this hack, and also try to implement some of the things that the original Maxximum Edition team had in their TODO list to make Other M Redux a polished product and a much better and definitive version of Other M for Metroid fans to enjoy.

-------------------

## Additional Info and Development

To check a detailed list of what files got modified and how they were changed, alongside how the project progressed, please visit the thread over at GBATemp for Metroid: Other M Redux:  
https://gbatemp.net/threads/metroid-other-m-redux-based-on-maxximum-edition.602301/

* Sources and reference links:

1. Metroid Other M Maxximum Edition:  
    https://www.reddit.com/r/Metroid/comments/6msbxg/other_m_maxximum_edition_fix_hack_first_release/

2. Full playthrough playlist on YouTube:  
    https://www.youtube.com/playlist?list=PL5D3oCB5cbQss4H5FyOfZzBZHP-55h6s4

3. Maxximum Edition Mirror at Archive.org:  
    https://archive.org/details/metroid-other-m-maxximum-edition

4. **"Other M Redux"** finished project files for testing can be found in Archive.org

-------------------

## Changelog:

**What's different between Redux and Maxximum Edition?**

Maxximum Edition was a great addition to the original Other M experience. However, a lot of the original game's essence and plot points where cut-off to completely avoid Samus' monologues, while some of them do add a lot to the story. Additionally, I wanted to implement things that Maxximum had planned for subsequent releases.

With that said, here's what has been added over vanilla Other M:

* **Samus now regains her abilities through her suit's auto-repair feature.**  
    Instead of Adam granting permission (similar to Maxximum Edition), Samus now regains her abilities through her suit’s auto-repair function, explained in the opening cutscene as a visual queue. [The introduction cutscene shows a new visual scene (based on Super Metroid's introduction text) where it shows that the Hyper Beam caused damages to the suit](https://www.youtube.com/watch?v=H9z6IXrT_-E&t=211s), and the suit will auto-repair features as necessary throughout the playthrough. This change over the original Maxximum Edition edit was done since Maxximum introduced a voiceover to bring across this point, and now it's all visual instead to avoid voiceovers.

* **Nunchuck and Classic Controller support has been added alongside standard Wiimote control.**  
    Thanks to the great work of [Vague Rant from GBAtemp shared on the New Classic Controller Hacks thread](https://gbatemp.net/threads/new-classic-controller-hacks.659837/page-2#post-10491796), Metroid: Other M can now be played with either the normal Wiimote-only way, Wiimote+Nunchuck or Wiimote+Classic Controller. It’s up to the player to decide which one they want to use! (Please refer to the GBAtemp thread post for the controller mapping) 

* **Major Cutscenes and Audio have been redone and reworked.**  
    This means that scenes like the one contradicting the Prime series, some out of character moments from Samus (Sector Zero and Ridley's specifically), and other slight instances have been reworked in either audio, video, or both.  
    Do note that not all the cutscenes have been reworked. Some inner monologues by Samus have been kept, as some do contribute to the overall story. The work done to the cutscenes was made following the next thought process:

  * Lore exposition, or events in the game that are important to the story have been kept with some slight changes. Some reactions by Samus have been toned down or silenced to better reflect her character, be it with no overly emotional reactions, or to match her reactions from the Prime series and Dread.

  * Elevator scenes in which Samus gives monologues have been kept with some slight audio rework.  
    The core reasoning for keeping these (although with emotional reactions toned down) is to think of these as the inner-monologues that Samus gives in Metroid Fusion during elevator transitions as well. I tried to match the tone by thinking how would the monologues in Other M work as the text monologues from Fusion, and rework them accordingly.

  * Sector Zero cutscene has been heavily re-edited to improve upon the pacing of the scene, and to avoid and tone down Samus' childish reaction to Adam's actions.
  (Please refer to the YouTube playlist to check the modified cutscene)

  * Ridley's encounter scene has also been heavily re-edited to have better pacing, and to entirely get rid of the PTSD reaction by Samus.
  (Please refer to the YouTube playlist to check the modified cutscene)

  * The final two cutscenes with Madeline have been edited to change Samus' suit colours to match her new Gravity Suit colour scheme.

* **Hard Mode unlocked right from the start (in-game, without Gecko code).**  
    This has the side-effect of unlocking also Theater Mode and Gallery Mode.  
    However, Gallery Mode remains empty, and still requires the player to obtain 100% of the items in order to unlock all the images.

* **In-game cutscenes can now be skipped by pressing the Minus button**  
    Even on an entirely new game (in-game, without Gecko code).

* **Proper Power Suit models for both cutscenes and gameplay**  
    Based on the in-game unused model seen in a flashback cutscene.  
    The original game had the Varia Suit form but in a Yellow colour. (Some prerendered in-game cutscenes still show the original Varia model though).

* **3rd Person Missiles** (in-game, without Gecko code):  
    Hold down the B button and then press 1 to shoot a missile in 3rd person (similar to how you'd shoot missiles in other 2D Metroid games, like Zero Mission or Fusion). Take into consideration that 3rd Person missiles can also be used to completely avoid going into 1st Person to fire missiles in some instances.  
    Super Missiles might also be used in 3rd Person for some sequence breaking...  
    But you'll have to find out how.

* **Full concentration takes twice the time**  
    The concentration mechanic hass been reworked with the following caveats:

    * **_Missiles restoration is done in half of this new time._**

    * **_Concentration can be used at any time to refill health_**, instead of only at critical.  
        **NOTE:** Do NOT do a full concentration if you have above 99 energy! (If you have E-Recovery tanks, don't do full concentration when above 1 Tank + 99 or 2 Tanks + 99, depending if you have 1 or both E-Recovery tanks)  
        If you do a full concentration while having health/energy tanks above 99, your life will go down to 99 with no Energy tanks! If you have collected E-Recovery Tanks, then doing a full concentration will lower your health to either 1 Tank + 99, or 2 Tanks + 99 depending on whether or not you got both already.

* **_Glitched door in Sector 3 (Pyrosphere) that could cause a softlock has been fixed and opened_** (in-game, without Gecko code)

* **_All the model and stages edits from Maxximum Edition have been used._**  
  This includes:

     * Super Smash Bros. Wii U/3DS styled Samus.

     * Purple Gravity suit in gameplay.

     * Super Metroid colors for returning enemies and bosses (except for the Fusion-colored Fune and Namihe, based on their OM concept art), and desaturated, less neon colors for others

     * Less neon in the Biosphere and some upgraded textures for things that were incredibly low-res and/or MS Paint bad

* **_[Optional]_ Music from other entries in the Metroid franchise**

* **_[Optional]_ Riivolution support**

-------------------

## Instructions

To run "Other M Redux", you have 2 options:

1. [**Riivolution method**](#riivolution-method)

2. [**Create a new ISO with the modified files**](#create-a-new-iso)

You can choose one or the other, but **_NOT_** both. Any of the two methods should work for both emulation and real hardware, but for real-hardware, the new ISO is recommended, as the Riivolution method might require an original disc for verification and other things, and it might also require other modifications to your Wii system rather than just running the modified ISO through a backup loader.

Now for each one of the methods:
-------------------
### RIIVOLUTION METHOD

If you want to simply grab the files and load Redux as a mod without overwriting the game files, you can use the Riivolution method of loading mods through either Homebrew or Dolphin's Riivolution loading feature. You'll need:

* A copy of Metroid: Other M for the Nintendo Wii.

* A Wii, Wii U, or the Dolphin emulator with a version that supports Riivolution file loading for mods/hacks.

* The "[Other M Redux](https://archive.org/compress/metroid-other-m-redux/formats=UNKNOWN,TEXT,JSON,ZIP,WAVE,WINDOWS%20EXECUTABLE,ITEM%20TILE,ARCHIVE%20BITTORRENT,METADATA)" files. (On the Archive.org link, next to the "SHOW ALL" text, click on the right where it says "### Original")

For the actual process for both Dolphin or Wii:

1. Grab the files inside the `Other M Redux` folder from this Archive.org package, and extract said the contents of it into specific paths depending on your machine or console:

    a) **Windows:** Extract the contents of the folder into `Documents/Dolphin Emulator/Load`, or `C:\Users\yourusername\AppData\Roaming\Dolphin Emulator\Load`, varies depending on your Dolphin version. The final path on Windows should be:  

        Documents/Dolphin Emulator/Load/Other M Redux/

    b) **Linux:** The path may vary depending on distro, but it usually should be located somewhere within the Home folder of the current user as a hidden folder, so enable hidden files to look for it, it could be inside either `/home/yourusername/.dolphin-emu/Load` or `/home/yourusername/.local/share/dolphin-emu/Load`, the main `Other M Redux` folder should go inside "`Load`". If you still can't find the right path, open up Dolphin on your Linux distro and right click on one of the games, select some of the "Open X folder" options to try to make Dolphin open up the proper folder directory for textures and mods.  
   **_This instruction also applies for Steam Deck._**

    c) **Wii:** Create a folder on the root of your SD card called `riivolution` and another called `Other M Redux`, put the Riivolution .XML file inside the `riivolution` folder, and put the whole contents of the Other M Redux hack inside the folder named `Other M Redux`.

    d) **Mac:** Put the whole contents of the "Other M Redux" folder inside `~/Library/Application Support/Dolphin/Load`. To get here, open Finder, press `⌘+Shift+G`, and enter that directory without the quotes.

3. For the edited cutscenes, you'll see that the `movie` folder contains several ZIP file inside. Extract the contents of those ZIPs by selecting all of them, right-click and the select the "Extract here" option. You should now have all of the SFD files extracted inside the "movie" folder. You can freely delete the .zip files afterwards. The final path for the cutscenes `Load/Other M Redux/movie/(All of the .SFD files here)`.  
    **_Note:_** I can't seem to upload the .SFD files by themselves, since it seems Archive.org tries to recognize them as video files and asks me for specific extensions for them (.mp4, .mpg, etc.), so blame Archive.org for that.  
    For reference, this is how the `movie` folder should look like:

        .../Load/Other M Redux/movie/dm01to02.sfd
        .../Load/Other M Redux/movie/dm03to04.sfd
        .../Load/Other M Redux/movie/dm08_01.sfd
        .../Load/Other M Redux/movie/dm09_01.sfd
        .../Load/Other M Redux/movie/dm33to34.sfd
        .../Load/Other M Redux/movie/dm36to43.sfd
        .../Load/Other M Redux/movie/dm46to49.sfd
        .../Load/Other M Redux/movie/dm52to56.sfd
        .../Load/Other M Redux/movie/dm61to63A.sfd
        .../Load/Other M Redux/movie/dm63Bto64.sfd
        .../Load/Other M Redux/movie/tm23to24.sfd

4. Grab the `[Riivolution] Other M Redux.xml` file, and copy it into the appropriate `Riivolution` folder depending on the system you're running the hack on.

   * **Windows:** `Documents\Dolphin Emulator\Load\Riivolution` or `%AppData%\Dolphin Emulator\Load\Riivolution`
   * **Linux:** `/home/yourusername/.dolphin-emu/Load/Riivolution` or `/home/yourusername/.local/share/dolphin-emu/Load/Riivolution`
   * **Wii:** At the root of the SD card, drop the XML file inside the `Riivolution` or `riivolution` folder
   * **Mac:** `~/Library/Application Support/Dolphin/Load/Riivolution`

    3a) _**Wii Users:** If you plan on playing "Other M Redux" on real hardware/Wii/WiiU, you're basically done at this point. Simply put the SD back into your Wii/WiiU and load up the Riivolution app with your "Metroid: Other M" disc inserted into the console. The Redux options should appear after the app loads as long as you have both the `Other M Redux` and `riivolution` folders on the root of the SD card properly setup with their appropriate files.  
    Dolphin users should continue into Step #4._

5. Load the XML file in Dolphin by right-clicking on your Other M game listed inside Dolphin, select "Start with Riivolution patches", and then select "Open Riivolution XML" and select the `[Riivolution] Other M Redux.xml` file we just copied into this folder. Make sure the `Other M Redux` folder is set correctly or else it won't be detected by the game.

6. The list of mods should now appear in the window. Simply toggle the options you want to have from "Disabled" to "Other M Redux", and for the OST specifically, it should be "Maxximum OST".  
    **NOTE:** Only enable the "Maxximum OST" option if you want to have the modified OST that Maxximum Edition had. This setting is entirely optional. If you want the original Other M soundtrack, don't enable it when running the Riivolution patch! (Or delete the `/ost/` directory inside `/sound/`). There's also another optional patch, "Original Title Screen BGM" which modifies the title screen music to always be that of the original, instead of the one that gets unlocked when unlocking the hidden ending.

7. You can also create a custom .json file exclusively for loading up Redux, without having to manually boot up the Riivolution file each time on boot. I have included 3 JSON files for reference, one for each main system (Windows, Linux, Steam Deck, Wii doesn't need one), but it should NOT be used as-is, since it depends on specific folder paths on my end. You should modify 3 paths from the .json accordingly:

    * **base-file** - Path to where you have your Other M ISO/WBFS file in your system.
    * **root** - Path to the "Load" folder in your system, where the "Other M Redux" folder should be.
    * **xml** - Path to the custom Riivolution XML file for Other M Redux, the one included in this package, which should go inside "Load/Riivolution".

    Be sure to change the dummy "user" I placed in each one of those three instances to your own, and also modify the "base-file" option according to where you have your Other M ISO, or the Other M main.dol file in your system. Additionally, if you ALWAYS want the "Maxximum OST" to be enabled when using the JSON file method, change the "choice: 0" option in the Maxximum OST section to "choice: 1".

-------------------
### CREATE A NEW ISO

If you want to play Other M Redux without having to rely on mods or Riivolution, you can create a standalone new ISO with Redux already patched in. For this you'll need the following tools:

* A copy of Metroid: Other M for the Nintendo Wii.

* Only one of the following two tools:
  * Either [Wii Backup Fusion](https://www.gamebrew.org/wiki/Wii_Backup_Fusion) ([Mirror #1](https://sourceforge.net/projects/wiibafu/), [Mirror #2](https://github.com/larsenv/Wii-Backup-Fusion)) to be able to dumps the contents of your ISO and then recompile the modified files back into an ISO for your Wii.
  * [Easy Wii ISO GCT Cheat Embedder](https://www.dropbox.com/scl/fi/p945ewopo6kbtgdq31tiv/Easy_Wii_ISO_gct_Cheat_Embedder_v1.00_dmm.zip) to patch the main.dol of the game with the modified code for Redux. **NOTE:** [An optional bash script option for Linux](https://archive.org/download/metroid-other-m-redux/Tools/ISO/Linux/GCT%20Embedder/) was created specifically for this Other M Redux project.

* The "[Other M Redux](https://archive.org/compress/metroid-other-m-redux/formats=UNKNOWN,TEXT,JSON,ZIP,WAVE,WINDOWS%20EXECUTABLE,ITEM%20TILE,ARCHIVE%20BITTORRENT,METADATA)" files. (On the Archive.org link, next to the "SHOW ALL" text, click on the right where it says "### Original")

**NOTE:** All the tools should be available inside the “**Tools/ISO**” folder, either for Windows or Linux. Wii Backup Fusion is recommended to achieve maximum compatibility with a real Wii/Wii U.

It might be possible to create the ISO directly with Dolphin, but it was found that the final modified DOL crashes the game on the first cutscene, possibly due to the “UPDATE” folder from v1.1 colliding with the new data from the modified Redux DOL.

For reference, you can follow this quick tutorial on how to do the entire process on Wii Backup Fusion for visual feedback:

* [Applying Mods into Punch-Out!! Wii Tutorial (using Wii Backup Fusion)](https://www.youtube.com/watch?v=3h0aecwHVmc)  
  [![Applying Mods into Punch-Out!! Wii Tutorial (using Wii Backup Fusion)](https://img.youtube.com/vi/3h0aecwHVmc/0.jpg)](https://www.youtube.com/watch?v=3h0aecwHVmc)

Now for the ISO creation:

1. Dump the ISO from the Wii or Wii U console.

2. Copy the ISO to your PC and extract the ISO image using WiiBackupFusion (I used Metroid Other M v1.1) (This step _could_ also be done with Dolphin, but it remains untested). You should then able to see the whole file listings inside the ISO ready for file replacement.

3. Go to the extracted folder in a regular file explorer window and replace/overwrite all files with those from the Redux package: models, movies, message and sounds (with or without optional OST and/or TITLE screen music) in their respective folder:

  * Move and replace all the numbered files inside `Other M Redux/model/` into `DATA/files/` from the extracted ISO files. (Note that you should move ONLY the files, and not the `model` folder). You should get a prompt to overwrite/replace the original files, click “Yes”. If you don’t get the prompt, you copied the files into the wrong location.

  * Move and replace the `message_all.dat` file inside `Other M Redux/message/` into `DATA/files/message/` from the extracted ISO files. You should get a prompt to overwrite/replace the original files, click “Yes”. If you don’t get the prompt, you copied the files into the wrong location.

  * For the edited cutscenes, you'll see that the `movie` folder contains several ZIP file inside. Extract the contents of those ZIPs by selecting all of them, right-click and the select the "Extract here" option. You should now have all of the SFD files extracted inside the `movie` folder. **_Delete_** the ZIP files afterwards and leave **_ONLY_** the SFD files in the directory!

  * Move and replace the folder `Other M Redux/movie/` (extracted from the ZIP files) into `DATA/files/movie/`. You should get a prompt to overwrite/replace the original files, click “Yes”. If you don’t get the prompt, you copied the files into the wrong location.

  * Move and replace the folder `Other M Redux/sound/bgm` into `DATA/files/sound/bgm/`. You should get a prompt to overwrite/replace the original files, click “Yes”. If you don’t get the prompt, you copied the files into the wrong location. Additionally, if you want to keep the original title screen music of Other M at all times, copy the single file inside `Other M Redux/sound/bgm/` into `DATA/files/sound/bgm/`, that should always make the title screen play the original track. You should get a prompt to overwrite/replace the original files, click “Yes”. If you don’t get the prompt, you copied the files into the wrong location.

  * **OPTIONAL:** If you want to have the modified OST that Maxximum Edition had, move and replace all of the files inside `Other M Redux/sound/ost/` into `DATA/files/sound/bgm`. If you want to keep the original Other M OST, then don't bother with this step. You should get a prompt to overwrite/replace the original files, click “Yes”. If you don’t get the prompt, you copied the files into the wrong location.

4. Return to Wii Backup Fusion and clear the previous ISO source file extracted at Step #1. Then load the extracted folder we just modified at step 2 as the new source and use Transfer to image to repack it as a Wii plain ISO.  
    Now we've got the Redux cutscenes and audio into the ISO, but no gameplay features. At this point, one could use it as is and add the remaining gameplay features with Ocarina codes, but if you want to have all the features in a standalone ISO and not bother with Ocarina or Gecko codes, head to Step #5.

5. To get all the remaining features hardcoded into the game, use Easy Wii ISO GCT Cheat Embedder (**GCT Embedder** folder inside the “**Tools/ISO/**" folder from the downloaded Redux files) to patch the DOL inside the newly created ISO, using GCT file (Redux+Classic Controller.gct) found inside the “Files” folder from the downloaded Redux files (or the new final GCT you will include in the package). Here, make sure to <ins>copy your new ISO in the same folder than the .bat file BEFORE dragging it over to start the script</ins> or it may not work.

6. The new output ISO found in the Wii GCT Embedder folder is now complete and ready to use. Use whatever working method to transfer it to your playing device.

7. Wii Backup Manager can be used to convert the ISO to WBFS if needed as well. Select your new ISO, then select the option Transfer to image in Wii Backup Fusion, choose ISO or WBFS.

8. Play on Dolphin or a Wii console through USB Loader GX or Wii Flow.

* _**NOTE:** If the compiled ISO gives you errors on a real Wii, or if certain features like the 3rd Person Missiles aren’t working for you, please refer to the README file inside the GCT Embeddder folder for further instructions as to how to manually add a DOL file patched with Gecko Loader into the converted ISO!_
-------------------
## TODO and Known Issues:

* **Modify all in-game cutscenes after dm52to56 to use "rtm_samus_gravity" (model 254) instead of "rtm_samus_barrier" (model 253)**  
While the CG cutscenes have been modified to show the Gravity Suit, the in-game cutsenes seem to still use the Barrier/Varia 3D model for them.  
A way to modify which model is loaded for those cutscenes is needed in order to properly have the right suit loaded for those cutscenes. At the moment, the following cutscenes are the ones that require the change:

  * The Elevator cutscene when on-route to the Bioweapon Research Area, which transitions between Samus and Ridley/Metroid Queen view, when the Metroid Queen attacks Ridley (**dm57_01**)

  * Samus encounters James' body (**dm57_02**)

  * Samus encountering Ridley's corpse (**dm57_03**)

  * Samus encounter with the real Madeline Bergman in Room MW (**dm58**)

  * Encounter with the Metroid Queen (**dm59_01**)

  * Brief cutscene of the Metroid Queen breathing fire (**dm59_02**)

  * During the Metroid Queen fight, when the Bottle Ship is about to crash but the Emergency brakes are activated (**dm59_03**)

  * Samus grapples into the Metroid Queen mouth (**dm60_01**)

  * Madeline runs away after the Metroid Queen has been defeated (**dm60_02**)

  * Samus returns to the Bottle Ship and exits her ship (**dm65_01**)

  * Samus enters the room to retrieve Adam's helmet (**dm65_02**)

  * There are other cutscenes which could also be affected, but those are not part of the main game, and are instead Tutorial-only cutscenes. These could be omitted.

Some files seem to have cutscene data (and movement data) in them, particularly those around model files 380 (405 I believe it to be dm57, right after the Sector Zero cutscene). Possibly here lies the key to modify which model in particular gets loaded for certain cutscenes. I still haven't verified if these files indeed modify the in-game cutscene assets and movements. It's confirmed that files 405 contains the cutscene data for all of the dm57 cutscenes (Samus going for Madeline), 406 contains the data for dm58, dm59 and dm60 (Samus reaches Madeline & Metroid Queen cutscenes), and 408 contains the data for dm65 (return to the Bottle Ship), but it's unknown yet how these call a specific model for their animations.

* **Subtitles dm36to43 (Ridley) and dm52to56 (Sector Zero) appear out of sync**  
These two cutscenes were re-cut and re-edited to have better and more logical pacing and remove out-of-character moments. However, due to this change, the subtitles are now desynced with the video. The subtitles themselves are inside the "message_all.dat" file, and can be edited through a Hex editor, but I haven't found out yet where the timings for each subtitle frames are located within that file (or if they are in another file altogether). The best I could do was re-order the subtitles to make them appear as close to the audio as possible, but until a method to edit the subtitles frames is found, this will remain like that.
-------------------
## Credits and Tools:

* [**All the people involved in the creation of Other M: Maxximum Edition, whose work was taken as the base for this project.**](https://www.reddit.com/r/Metroid/comments/6msbxg/other_m_maxximum_edition_fix_hack_first_release/)

* [**ShadowOne333**](https://x.com/ShadowOne333): Main project leader and developer.
    Reworking the entirety of the audio, cutscenes, main model textures, the main gameplay Power Suit model ("0" model in the game files"), text edits and custom code insertion into the main.dol file.

* [**BigSharkZ**](https://x.com/BigSharkZ): For his awesome help, small tutorials and insights on how to port the entirety of the Power Suit model from the unused "255" cutscene model, and making it work on the main "252" cutscene model, while the main gameplay model was done by ShadowOne333 with his help. All this by using Blender (DAE imports/exports) and BrawlCrate's "Reimport meshes" option.

* [**Vague Rant**](https://gbatemp.net/members/vague-rant.132767/): For his code to make Nunchuck and Classic Controller compatible with Other M, which was shared in the “[New Classic Controller Hacks](https://gbatemp.net/threads/new-classic-controller-hacks.659837/)” at GBAtemp.

* [Windhunter](https://x.com/windhunter7): For the initial work on the commission to port over the assets for the legs, shoulder pads and chest pieces of the unused cutscene Power Suit model (255) into both models 0 (in-game model) and 252 (cutscene model). These models were the first being used for the Power Suit model initially, before these were redone by BigSharkZ (cutscene model) and ShadowOne333 (gameplay model).

* **Rick328** and **Nintendo Maniac** from [GBAtemp](https://gbatemp.net) for their help towards testing, feedback and ISO creation methods.

* [CryTools by ThisKwasior](https://github.com/ThisKwasior/CryTools) to create the SFD files for the modified cutscenes and audio.

* [ffmpeg](https://ffmpeg.org/) to rip the videos and audio tracks from the SFD files

* **Dreamcast Movie Creator (DMC)** to create the AIX files for certain audios.
-------------------
## License

**Metroid: Other M Redux** is a project licensed under the terms of the GPLv3, which means that you are given legal permission to copy, distribute and/or modify this project, as long as:

1. The source for the available modified project is shared and also available to the public without exception.
2. The modified project subjects itself different naming convention, to differentiate it from the main and licensed Metroid: Other M Redux project.

You can find a copy of the license in the LICENSE file.

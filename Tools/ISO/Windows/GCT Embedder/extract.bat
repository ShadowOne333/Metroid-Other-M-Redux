@echo off

cls
echo ==========================================
echo = Easy Wii ISO .gct Cheat Embedder v1.00 =
echo =                                        =
echo =           Pack + Script by:            =
echo =         damysteryman/Team DARK         =
echo =        Updates by ppPooPoo69420        =
echo =                                        =
echo =              Powered by:               =
echo =      Wiimms ISO Tool v3.00a r7387      =
echo =      Wiimms SZS Tool v1.54a r7393      =
echo =                by Wiimm                =
echo =                                        =
echo =        More info in README.txt         =
echo ==========================================
pause

SET WITPATH=%cd%\wit
SET SZSPATH=%cd%\wstrt

IF "%~1"=="" GOTO ISOFAIL
for /f %%i in ('%WITPATH% ID6 "%~1"') do set GAMEID=%%i
IF NOT EXIST %cd%\%GAMEID%.gct GOTO GCTFAIL

SET FILENAME=%~n1
SET WORKDIR=%FILENAME%-UNPACK

%WITPATH% extract -1p "%~1" --DEST "%WORKDIR%" --psel data -ovv

echo.
echo OK, should be finished now!
echo Look for the file [%FILENAME% + GCT_EMBED.iso] in the same folder as this script!
GOTO END

:ISOFAIL
echo.
echo Please Drag and drop your Wii .iso onto this .bat script file in order for it to work!
echo.
GOTO END

:GCTFAIL
echo.
echo %GAMEID%.GCT not found!
echo Please make sure your .gct file is in the 'gct' folder, and is named %GAMEID%.GCT
echo.

:END
pause

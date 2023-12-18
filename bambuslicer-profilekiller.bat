@echo off
setlocal
:PROMPT
echo This script will move your BambuSlicer, BambuSlicer-SoftFever and OrcaSlicer local profiles
echo These are located under %APPDATA% and %LOCALAPPDATA%
echo .
SET /P AREYOUSURE=Are you sure to continue (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

  echo .
  SET /P AREYOUSUREBAMBU=Do you want to move BambuStudio Profile directory (Y/[N])?
  IF /I "%AREYOUSUREBAMBU%" NEQ "Y" GOTO END
    move /Y %APPDATA%\BambuStudio %APPDATA%\BambuStudio_backup
    move /Y %LOCALAPPDATA%\BambuStudio %LOCALAPPDATA%\BambuStudio_backup
    move /Y %APPDATA%\BambuStudioBeta %APPDATA%\BambuStudioBeta_backup
    move /Y %LOCALAPPDATA%\BambuStudioBeta %LOCALAPPDATA%\BambuStudioBeta_backup
  :END

  echo .
  SET /P AREYOUSUREORCA=Do you want to move OrcaSlicer Profile directory (Y/[N])?
  IF /I "%AREYOUSUREORCA%" NEQ "Y" GOTO END
    move /Y %APPDATA%\BambuStudio-Softfever %APPDATA%\BambuStudio-Softfever_backup
    move /Y %APPDATA%\OrcaSlicer %APPDATA%\OrcaSlicer_backup
    move /Y %LOCALAPPDATA%\BambuStudio-Softfever %LOCALAPPDATA%\BambuStudio-Softfever_backup
    move /Y %LOCALAPPDATA%\OrcaSlicer %LOCALAPPDATA%\OrcaSlicer_backup
  :END

:END
endlocal
echo .
pause

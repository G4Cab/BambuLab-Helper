@echo off
setlocal
:PROMPT
echo "This script will delete your BambuSlicer, BambuSlicer-SoftFever and OrcaSlicer local profiles"
echo "These are located under %APPDATA% and %LOCALAPPDATA%"
SET /P AREYOUSURE=Are you sure to continue (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

del /F /S /Q %APPDATA%\BambuStudio
del /F /S /Q %APPDATA%\BambuStudio-Softfever
del /F /S /Q %APPDATA%\OrcaSlicer
del /F /S /Q %LOCALAPPDATA%\BambuStudio
del /F /S /Q %LOCALAPPDATA%\BambuStudio-Softfever
del /F /S /Q %LOCALAPPDATA%\OrcaSlicer

:END
endlocal

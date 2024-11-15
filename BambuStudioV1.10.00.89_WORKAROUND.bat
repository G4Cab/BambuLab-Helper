@echo off
setlocal
:PROMPT
echo This script will move your BambuStudio local filecache aside
echo Please reassure that your language inside Bambu Studio is set to english before you continue.
echo These are located under %LOCALAPPDATA%
echo .
SET /P AREYOUSURE=Are you sure to continue (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

    move /Y %LOCALAPPDATA%\BambuStudio %LOCALAPPDATA%\BambuStudio_backup
:END
endlocal
echo .
pause

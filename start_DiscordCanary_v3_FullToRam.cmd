::@echo off
chcp 1251
::cls
taskkill /f /im DiscordCanary.exe
timeout 5 /nobreak
R:
RD /S /Q R:\Temp\DS
cd R:\Temp
set "UserName=ve3xone"
mkdir R:\Temp\DS
mkdir "R:\Temp\DS\data"
mkdir "R:\Temp\DS\data\ProgramData"
mkdir "R:\Temp\DS\data\Users\%username%\AppData\Roaming"
mkdir "R:\Temp\DS\data\Program Files\Common Files"
mkdir "R:\Temp\DS\data\Program Files (x86)\Common Files"
mkdir "R:\Temp\DS\data\setup"
mkdir "R:\Temp\DS\data\Users\%username%"
mkdir "R:\Temp\DS\data\Users\%username%\AppData\Local"
mkdir "R:\Temp\DS\data\ProgramData"
mkdir "R:\Temp\DS\data\Program Files"
mkdir "R:\Temp\DS\data\Program Files (x86)"
mkdir "R:\Temp\DS\data\ProgramData"
mkdir "R:\Temp\DS\data\Users\%username%"
mkdir "R:\Temp\DS\data\Users\%username%\AppData\Roaming\discordcanary"

set "MainAllUsersProfile=%AllUsersProfile%
set "MainAppData=%AppData%"
set "MainCommonProgramFiles=%CommonProgramFiles%"
set "MainCommonProgramFiles(x86)=%CommonProgramFiles(x86)%"
set "MainHomeDrive=%HomeDrive%"
set "MainHomePath=%HomePath%"
set "MainLocalAppData=%LocalAppData%"
set "MainProgramData=%ProgramData%"
set "MainProgramFiles=%ProgramFiles%"
set "MainProgramFiles(x86)=%ProgramFiles(x86)%"
set "MainProgramW6432=%ProgramW6432%"
set "MainUserProfile=%UserProfile%"
set "AllUsersProfile=R:\Temp\DS\data\ProgramData"
set "AppData=R:\Temp\DS\data\Users\%username%\AppData\Roaming"
set "CommonProgramFiles=R:\Temp\DS\data\Program Files\Common Files"
set "CommonProgramFiles(x86)=R:\Temp\DS\data\Program Files (x86)\Common Files"
set "HomeDrive=R:\Temp\DS\data"
set "HomePath=R:\Temp\DS\data\Users\%username%"
set "LocalAppData=R:\Temp\DS\data\Users\%username%\AppData\Local"
set "ProgramData=R:\Temp\DS\data\ProgramData"
set "ProgramFiles=R:\Temp\DS\data\Program Files"
set "ProgramFiles(x86)=R:\Temp\DS\data\Program Files (x86)"
set "ProgramW6432=R:\Temp\DS\data\ProgramData"
set "UserProfile=R:\Temp\DS\data\Users\ve3xone"
::cls

if exist "C:\DSPortable" goto run

:m1
::cls
Set /p choice="[?] Запуск в первый раз? [Y/N]: "
if not defined choice goto m1
if "%choice%"=="Y" (goto firstrun)
if "%choice%"=="N" (goto run)
if "%choice%"=="y" (goto firstrun)
if "%choice%"=="n" (goto run)
Echo.
Echo Не правильно сделан выбор задания
Echo.
::cls
goto m1

:firstrun
set ok=firstrun
RD /Q /S "E:\Apps\DiscordCanary\Account"
mkdir "E:\Apps\DiscordCanary\Account"
MKLINK "%AppData%\discordcanary\settings.json" "E:\Apps\DiscordCanary\settings.json"
::cls
goto download

:run
set ok=run
MKLINK "%AppData%\discordcanary\settings.json" "E:\Apps\DiscordCanary\settings.json"
MKLINK /D "%AppData%\discordcanary\Local Storage" "E:\Apps\DiscordCanary\Account\Local Storage"
MKLINK "%AppData%\discordcanary\Local State" "E:\Apps\DiscordCanary\Account\Local State"
MKLINK "%AppData%\discordcanary\Preferences" "E:\Apps\DiscordCanary\Account\Preferences"
MKLINK "%AppData%\discordcanary\Cookies" "E:\Apps\DiscordCanary\Account\Cookies"
MKLINK "%AppData%\discordcanary\Cookies-journal" "E:\Apps\DiscordCanary\Account\Cookies-journal"
MKLINK "%AppData%\discordcanary\Network Persistent State" "E:\Apps\DiscordCanary\Account\Network Persistent State"
MKLINK "%AppData%\discordcanary\TransportSecurity" "E:\Apps\DiscordCanary\Account\TransportSecurity"
::cls
goto download

:download
timeout 2 >nul
::cls
curl -L -o %HomeDrive%\setup\DiscordCanaryInstaller.exe https://discordapp.com/api/download/canary?platform=win
if not exist R:\Temp\DS\data\setup\DiscordCanaryInstaller.exe goto download
start "" R:\Temp\DS\data\setup\DiscordCanaryInstaller.exe
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v DiscordCanary /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscordCanary /f
if %ok%==firstrun goto precopy

::Check process
:check
::cls
timeout 1 >nul
Set ProcessName=DiscordCanary.exe
TaskList /FI "ImageName EQ %ProcessName%" 2>nul|Find /I "%ProcessName%">nul||(
goto installpowercord
)
goto check

:installpowercord
timeout 20
::start "" cmd /C start "" "%MainLocalAppData%\DiscordCanary\Update.exe" --processStart DiscordCanary.exe
::cls
RD /Q /S %MainAppData%\discordcanary
RD /Q /S %MainLocalAppData%\DiscordCanary
mklink /D %MainAppData%\discordcanary "%AppData%\discordcanary"
mklink /D %MainLocalAppData%\DiscordCanary "%LocalAppData%\DiscordCanary"
mklink /D %MainLocalAppData%\SquirrelTemp "%LocalAppData%\SquirrelTemp"
::start /min cmd /C "E:&cd "E:\Apps\powercord"&npm run unplug&npm run plug canary&timeout 20&taskkill /f /im DiscordCanary.exe"
::echo Installing Powercord
::timeout 20 /nobreak
::fix update powercord
::Install Git или скачать portable и путь до git.exe E:\Apps\Git\bin внести в переменную windows <<path>>
::start "" "%LocalAppData%\DiscordCanary\Update.exe" --processStart DiscordCanary.exe
set "AllUsersProfile=%MainAllUsersProfile%
set "AppData=%MainAppData%"
set "CommonProgramFiles=%MainCommonProgramFiles%"
set "CommonProgramFiles(x86)=%MainCommonProgramFiles(x86)%"
set "HomeDrive=%MainHomeDrive%"
set "HomePath=%MainHomePath%"
set "LocalAppData=%MainLocalAppData%"
set "ProgramData=%MainProgramData%"
set "ProgramFiles=%MainProgramFiles%"
set "ProgramFiles(x86)=%MainProgramFiles(x86)%"
set "ProgramW6432=%MainProgramW6432%"
set "UserProfile=%MainUserProfile%"
start cmd /C "C:&cd %LocalAppData%\DiscordCanary\app-*.*.*&start DiscordCanary.exe --disable-gpu"
timeout 15


::taskkill /f /im DiscordHookHelper.exe
::taskkill /f /im DiscordHookHelper64.exe
::cd R:\Temp\DS\data\Users\ve3xone\AppData\Local\DiscordCanary\app-*.*.*\modules
::For /D /R %%I In (discord_hook-*) Do rd /q /s "%%~I"
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v DiscordCanary /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscordCanary /f
if %ok%==run C:&exit

:precopy
timeout 15 /nobreak

:copy
echo Зайдите в аккаунт Discord и после чего закройте Discord
timeout 4 >nul
Set ProcessName=DiscordCanary.exe
TaskList /FI "ImageName EQ %ProcessName%" 2>nul|Find /I "%ProcessName%">nul||(
goto copypaste
)
goto copy

:copypaste
mkdir "E:\Apps\DiscordCanary\Account\Local Storage"
xcopy /y /o /e "%Appdata%\discordcanary\Local Storage" "E:\Apps\DiscordCanary\Account\Local Storage"
copy /Y "%Appdata%\discordcanary\Local State" E:\Apps\DiscordCanary\Account
::copy /Y "R:\Temp\DS\data\Users\ve3xone\AppData\Roaming\discordcanary\Preferences" E:\Apps\DiscordCanary\Account
copy /Y "%Appdata%\discordcanary\Cookies" E:\Apps\DiscordCanary\Account
copy /Y "%Appdata%\discordcanary\Cookies-journal" E:\Apps\DiscordCanary\Account
copy /Y "%Appdata%\discordcanary\Network Persistent State" E:\Apps\DiscordCanary\Account
copy /Y "%Appdata%\discordcanary\TransportSecurity" E:\Apps\DiscordCanary\Account
copy NUL C:\DSPortable
set ok=run
goto installpowercord
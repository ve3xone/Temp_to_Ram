@echo off
taskkill /f /im DiscordCanary.exe
timeout 2 /nobreak
del /Q "C:\Users\ve3xone\AppData\Local\DiscordCanary\packages\DiscordCanary-*.nupkg"
RD /S /Q R:\Temp\DS
cd R:\Temp
mkdir R:\Temp\DS
mkdir R:\Temp\DS\Discord-GPUCache
RD /S /Q C:\Users\ve3xone\AppData\Roaming\discordcanary\GPUCache
mklink /D C:\Users\ve3xone\AppData\Roaming\discordcanary\GPUCache R:\Temp\DS\GPUCache-Discord
NUL>"R:\Temp\DS\DiscordCanary_updater_rCURRENT.log"
NUL>"R:\Temp\DS\SquirrelSetup.log"
del /Q "C:\Users\ve3xone\AppData\Local\DiscordCanary\DiscordCanary_updater_rCURRENT.log"
del /Q "C:\Users\ve3xone\AppData\Local\DiscordCanary\SquirrelSetup.log"
mklink "C:\Users\ve3xone\AppData\Local\DiscordCanary\DiscordCanary_updater_rCURRENT.log" "R:\Temp\DS\DiscordCanary_updater_rCURRENT.log"
mklink "C:\Users\ve3xone\AppData\Local\DiscordCanary\SquirrelSetup.log" "R:\Temp\DS\SquirrelSetup.log"
RD /S /Q C:\Users\ve3xone\AppData\Roaming\discordcanary\blob_storage
MKDIR R:\Temp\DS\Discord-blob_storage
MKLINK /D C:\Users\ve3xone\AppData\Roaming\discordcanary\blob_storage R:\Temp\DS\Discord-blob_storage
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cache"
MKDIR R:\Temp\DS\Discord-Cache
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cache" R:\Temp\DS\Discord-Cache
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Code Cache"
MKDIR R:\Temp\DS\Discord-Code-Cache
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\Code Cache" R:\Temp\DS\Discord-Code-Cache
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Crashpad"
MKDIR R:\Temp\DS\Discord-Crashpad
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\Crashpad" R:\Temp\DS\Discord-Crashpad
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\module_data"
MKDIR R:\Temp\DS\Discord-module_data
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\module_data" R:\Temp\DS\Discord-module_data
DEL /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\modules.log"
NUL>"R:\Temp\DS\modules.log"
MKLINK "C:\Users\ve3xone\AppData\Roaming\discordcanary\modules.log" R:\Temp\DS\modules.log
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\shared_proto_db"
mkdir R:\Temp\DS\shared_proto_db-Discord
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\shared_proto_db" R:\Temp\DS\shared_proto_db-Discord
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\VideoDecodeStats"
mkdir R:\Temp\DS\VideoDecodeStats-Discord
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\VideoDecodeStats" R:\Temp\DS\VideoDecodeStats-Discord
mkdir R:\Temp\DS\SquirrelTemp
RD /S /Q "C:\Users\ve3xone\AppData\Local\SquirrelTemp"
MKLINK /D "C:\Users\ve3xone\AppData\Local\SquirrelTemp" R:\Temp\DS\SquirrelTemp
mkdir R:\Temp\DS\DSC-Dictionaries
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Dictionaries"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\Dictionaries" R:\Temp\DS\DSC-Dictionaries
RD /S /Q "C:\Users\ve3xone\AppData\Local\DiscordCanary\download"
mkdir R:\Temp\DS\DiscordCanary-download-update
MKLINK /D "C:\Users\ve3xone\AppData\Local\DiscordCanary\download" R:\Temp\DS\DiscordCanary-download-update
C:
CD "C:\Users\ve3xone\AppData\Local\DiscordCanary\app-1.0.46\modules\discord_dispatch-*"
NUL>"R:\Temp\DS\dispatch.log"
del /Q .\discord_dispatch\dispatch.log
mklink ".\discord_dispatch\dispatch.log" "R:\Temp\DS\dispatch.log"
del /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cookies"
del /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cookies-journal"
NUL>"R:\Temp\DS\Cookies"
NUL>"R:\Temp\DS\Cookies-journal"
mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cookies" R:\Temp\DS\Cookies
mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cookies-journal" "R:\Temp\DS\Cookies-journal"
del /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Network Persistent State"
del /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Preferences"
del /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\TransportSecurity"
del /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\quotes.json"
::NUL>"R:\Temp\DS\Network Persistent State"
::NUL>"R:\Temp\DS\Preferences"
NUL>"R:\Temp\DS\TransportSecurity"
NUL>"R:\Temp\DS\quotes.json"
::mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\Network Persistent State" "R:\Temp\DS\Network Persistent State"
::mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\Preferences" "R:\Temp\DS\Preferences"
mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\TransportSecurity" "R:\Temp\DS\TransportSecurity"
mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\quotes.json" "R:\Temp\DS\quotes.json"

RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Service Worker"
mkdir "R:\Temp\DS\Service Worker"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\Service Worker" "R:\Temp\DS\Service Worker"

RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\IndexedDB"
mkdir "R:\Temp\DS\IndexedDB"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\IndexedDB" "R:\Temp\DS\IndexedDB"

mkdir R:\Temp\DS\DSC-Dictionaries-discordRoaming
RD /S /Q C:\Users\ve3xone\AppData\Roaming\discord\Dictionaries
MKLINK /D C:\Users\ve3xone\AppData\Roaming\discord\Dictionaries R:\Temp\DS\DSC-Dictionaries-discordRoaming

::Account
::RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\Local Storage"
::mkdir "R:\Temp\DS\Local Storage"
::MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\Local Storage" "R:\Temp\DS\Local Storage"


::Icons
C:
cd C:\Users\ve3xone\AppData\Roaming\discordcanary
For /R %%F in (*.png) do (
del /Q "R:\Temp\DS\%%~nxF"
echo. >"R:\Temp\DS\%%~nxF"
del /Q "%%~F"
mklink "%%~F" "R:\Temp\DS\%%~nxF"
)
For /R %%I in (*.ico) do (
del /Q "R:\Temp\DS\%%~nxI"
echo. >"R:\Temp\DS\%%~nxI"
del /Q "%%~I"
mklink "%%~I" "R:\Temp\DS\%%~nxI"
)

::Start
START "" C:\Users\ve3xone\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
echo.
echo Starting Discord Canary...
echo.
timeout 15 /nobreak
RD /S /Q "C:\Users\ve3xone\AppData\Local\DiscordCanary\download"
mkdir R:\Temp\DS\DiscordCanary-download-update
MKLINK /D "C:\Users\ve3xone\AppData\Local\DiscordCanary\download" R:\Temp\DS\DiscordCanary-download-update
mklink "C:\Users\ve3xone\AppData\Roaming\discordcanary\Cookies-journal" "R:\Temp\DS\Cookies-journal"
exit
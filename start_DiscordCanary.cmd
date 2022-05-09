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
echo. >"R:\Temp\DS\DiscordCanary_updater_rCURRENT.log"
echo. >"R:\Temp\DS\SquirrelSetup.log"
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
echo. >"R:\Temp\DS\modules.log"
MKLINK "C:\Users\ve3xone\AppData\Roaming\discordcanary\modules.log" R:\Temp\DS\modules.log
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\shared_proto_db"
mkdir R:\Temp\DS\shared_proto_db-Discord
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\shared_proto_db" R:\Temp\DS\shared_proto_db-Discord
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\discordcanary\VideoDecodeStats"
mkdir R:\Temp\DS\VideoDecodeStats-Discord
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\discordcanary\VideoDecodeStats" R:\Temp\DS\VideoDecodeStats-Discord
START "" C:\Users\ve3xone\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
EXIT




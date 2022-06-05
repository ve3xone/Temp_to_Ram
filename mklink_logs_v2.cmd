::Запуск NetLimiter
sc start nlsvc

::Запуск и сброс Ramdisk'a
sc start ImDiskRD

::old

::timeout 30

:start
:: RAM Disk: https://rsload.net/soft/cleaner-disk/21094-imdisk-toolkit.html

::CacheIconsWindows
::RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\Explorer"
::MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\Explorer" R:\Temp

RD /S /Q C:\Users\ve3xone\AppData\Local\ConnectedDevicesPlatform
RD /S /Q R:\Temp\Local_ConnectedDevicesPlatform
mkdir R:\Temp\Local_ConnectedDevicesPlatform
MKLINK /D C:\Users\ve3xone\AppData\Local\ConnectedDevicesPlatform R:\Temp\Local_ConnectedDevicesPlatform

RD /S /Q C:\ProgramData\Microsoft\Windows\wfp
RD /S /Q R:\Temp\Microsoft_Windows_wfp
mkdir R:\Temp\Microsoft_Windows_wfp
MKLINK /D C:\ProgramData\Microsoft\Windows\wfp R:\Temp\Microsoft_Windows_wfp

::RD /S /Q C:\Users\ve3xone\AppData\Local\Comms
::RD /S /Q R:\Temp\Local_Comms
::mkdir R:\Temp\Local_Comms
::MKLINK /D C:\Users\ve3xone\AppData\Local\Comms R:\Temp\Local_Comms

RD /S /Q C:\Windows\System32\WDI
RD /S /Q R:\Temp\Windows_System32_WDI
mkdir R:\Temp\Windows_System32_WDI
MKLINK /D C:\Windows\System32\WDI R:\Temp\Windows_System32_WDI

RD /S /Q C:\Users\ve3xone\AppData\Local\Microsoft\Windows\Caches
RD /S /Q R:\Temp\Local_Microsoft_Windows_Caches
mkdir R:\Temp\Local_Microsoft_Windows_Caches
MKLINK /D C:\Users\ve3xone\AppData\Local\Microsoft\Windows\Caches R:\Temp\Local_Microsoft_Windows_Caches

RD /S /Q C:\Windows\system32\SleepStudy
RD /S /Q R:\Temp\Windows_system32_SleepStudy
mkdir R:\Temp\Windows_system32_SleepStudy
MKLINK /D C:\Windows\system32\SleepStudy R:\Temp\Windows_system32_SleepStudy

RD /S /Q "C:\Windows\Panther\UnattendGC"
RD /S /Q R:\Temp\Windows_Panther_UnattendGC
mkdir R:\Temp\Windows_Panther_UnattendGC
MKLINK /D "C:\Windows\Panther\UnattendGC" R:\Temp\Windows_Panther_UnattendGC

::WMI Ломает 
takeown /f "C:\Windows\System32\LogFiles" && icacls "C:\Windows\System32\LogFiles" /grant *S-1-5-32-544:F
RD /S /Q "C:\Windows\System32\LogFiles"
RD /S /Q R:\Temp\Windows_System32_LogFiles
MKLINK /D "C:\Windows\System32\LogFiles" R:\Temp

::Browser Cent (Тест, будет доробатываться)
RD /S /Q R:\Temp\Cent
mkdir R:\Temp\Cent

mkdir "R:\Temp\Cent\Profile 1\Application Cache"
RD /S /Q "E:\Apps\Cent\User Data\Profile 1\Application Cache"
MKLINK /D "E:\Apps\Cent\User Data\Profile 1\Application Cache" "R:\Temp\Cent\Profile 1\Application Cache"

mkdir "R:\Temp\Cent\Profile 1\Cache"
RD /S /Q "E:\Apps\Cent\User Data\Profile 1\Cache"
MKLINK /D "E:\Apps\Cent\User Data\Profile 1\Cache" "R:\Temp\Cent\Profile 1\Cache"

mkdir "R:\Temp\Cent\Profile 1\Code Cache"
RD /S /Q "E:\Apps\Cent\User Data\Profile 1\Code Cache"
MKLINK /D "E:\Apps\Cent\User Data\Profile 1\Code Cache" "R:\Temp\Cent\Profile 1\Code Cache"

mkdir "R:\Temp\Cent\Profile 1\Service Worker"
RD /S /Q "E:\Apps\Cent\User Data\Profile 1\Service Worker"
MKLINK /D "E:\Apps\Cent\User Data\Profile 1\Service Worker" "R:\Temp\Cent\Profile 1\Service Worker"

mkdir "R:\Temp\Cent\Profile 1\GPUCache"
RD /S /Q "E:\Apps\Cent\User Data\Profile 1\GPUCache"
MKLINK /D "E:\Apps\Cent\User Data\Profile 1\GPUCache" "R:\Temp\Cent\Profile 1\GPUCache"

mkdir "R:\Temp\Cent\Crashpad"
RD /S /Q "E:\Apps\Cent\User Data\Crashpad"
MKLINK /D "E:\Apps\Cent\User Data\Crashpad" "R:\Temp\Cent\Crashpad"

mkdir "R:\Temp\Cent\PnaclTranslationCache"
RD /S /Q "E:\Apps\Cent\User Data\PnaclTranslationCache"
MKLINK /D "E:\Apps\Cent\User Data\PnaclTranslationCache" "R:\Temp\Cent\PnaclTranslationCache"

rd /s /q C:\Users\ve3xone\AppData\Local\Microsoft\Windows\INetCache
rd /s /q R:\Temp\Microsoft_Windows_INetCache
mkdir R:\Temp\Microsoft_Windows_INetCache
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\INetCache" R:\Temp\Microsoft_Windows_INetCache

RD /S /Q R:\Temp\Microsoft_Windows_PowerShell
mkdir R:\Temp\Microsoft_Windows_PowerShell
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\PowerShell"
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\PowerShell" R:\Temp\Microsoft_Windows_PowerShell

RD /S /Q R:\Temp\SoftwareDistribution_DataStore_Logs
mkdir R:\Temp\SoftwareDistribution_DataStore_Logs
RD /S /Q C:\Windows\SoftwareDistribution\DataStore\Logs
MKLINK /D C:\Windows\SoftwareDistribution\DataStore\Logs R:\Temp\SoftwareDistribution_DataStore_Logs

takeown /f "C:\Windows\rescache" && icacls "C:\Windows\rescache" /grant *S-1-5-32-544:F
takeown /f "C:\Windows\rescache\*.*" && icacls "C:\Windows\rescache\*.*" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\rescache
MKLINK /D C:\Windows\rescache R:\Temp

::Недавние документы
RD /S /Q R:\Temp\Recent
RD /S /Q C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\Recent
mkdir R:\Temp\Recent
MKLINK /D C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\Recent R:\Temp\Recent

RD /S /Q R:\Temp\LocalLow_Microsoft_CryptnetUrlCache
RD /S /Q C:\Users\ve3xone\AppData\LocalLow\Microsoft\CryptnetUrlCache
mkdir R:\Temp\LocalLow_Microsoft_CryptnetUrlCache
MKLINK /D C:\Users\ve3xone\AppData\LocalLow\Microsoft\CryptnetUrlCache R:\Temp\LocalLow_Microsoft_CryptnetUrlCache

RD /S /Q R:\Temp\systemprofile_LocalLow_Microsoft_CryptnetUrlCache
RD /S /Q C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache
mkdir R:\Temp\systemprofile_LocalLow_Microsoft_CryptnetUrlCache
MKLINK /D C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache R:\Temp\systemprofile_LocalLow_Microsoft_CryptnetUrlCache

::C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\Fonts\

::Sysmain to RAM
takeown /f "C:\Windows\Prefetch" && icacls "C:\Windows\Prefetch" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\Prefetch
MKLINK /D C:\Windows\Prefetch R:\Temp

RD /S /Q C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp
MKLINK /D C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp R:\Temp

RD /S /Q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization"
MKLINK /D "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization" R:\Temp

::AntiZapret to RAM
takeown /f "C:\Windows\ServiceState\WinHttpAutoProxySvc" && icacls "C:\Windows\ServiceState\WinHttpAutoProxySvc" /grant *S-1-5-32-544:F
takeown /f "C:\Windows\ServiceState\WinHttpAutoProxySvc\*.*" && icacls "C:\Windows\ServiceState\WinHttpAutoProxySvc\*.*" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\ServiceState\WinHttpAutoProxySvc\Data
MKLINK /D C:\Windows\ServiceState\WinHttpAutoProxySvc\Data R:\Temp

::Журнал собыытий windows (Проблемы: хз)
::takeown /f "C:\Windows\ServiceState\EventLog" && icacls "C:\Windows\ServiceState\EventLog" /grant *S-1-5-32-544:F
::takeown /f "C:\Windows\ServiceState\EventLog\*.*" && icacls "C:\Windows\ServiceState\EventLog\*.*" /grant *S-1-5-32-544:F
::RD /S /Q C:\Windows\ServiceState\EventLog\Data
::MKLINK /D C:\Windows\ServiceState\EventLog\Data R:\Temp

RD /S /Q  C:\Windows\Installer
MKLINK /D C:\Windows\Installer R:\Temp

RD /S /Q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp"
MKLINK /D "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp" R:\Temp

::History Commands Powershell
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine" R:\Temp

::Журнал событий Windows (Ломает службы, и startup)
RD /S /Q C:\Windows\system32\winevt\Logs
MKLINK /D C:\Windows\system32\winevt\Logs R:\Temp

::Adobe
RD /S /Q R:\Temp\AdobeFlashPlayerNativeCache
mkdir R:\Temp\AdobeFlashPlayerNativeCache
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\Adobe\Flash Player\NativeCache"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\Adobe\Flash Player\NativeCache" R:\Temp\AdobeFlashPlayerNativeCache

::Clean on folder C:\Program Files (x86)\Common Files\VMware\InstallerCache (setup.msi 600mb)

::AIMP Plugin Youtube-dl
RD /S /Q "C:\Users\ve3xone\.cache"
MKLINK /D C:\Users\ve3xone\.cache R:\Temp

::Python IDLE Recent files (кому не нужны недавно открытые py файлы в стандартном IDLE Shell Python)
RD /S /Q "C:\Users\ve3xone\.idlerc"
MKLINK /D C:\Users\ve3xone\.idlerc R:\Temp

::Riot Vanguard
RD /S /Q "C:\Program Files\Riot Vanguard\Logs"
MKDIR "R:\Temp\Riot Vanguard\Logs"
MKLINK /D "C:\Program Files\Riot Vanguard\Logs" "R:\Temp\Riot Vanguard\Logs"
start "" "C:\Program Files\Riot Vanguard\vgtray.exe"

::BattleNet
C:
cd C:\ProgramData\Battle.net\Agent
For /D /R %%I In (Agent.*) Do RD /S /Q "%%~I\Logs" & MKLINK /D "%%~I\Logs" R:\Temp
::RD /S /Q "C:\ProgramData\Battle.net_components"
::mkdir R:\Temp\Battle.net_components
::MKLINK /D "C:\ProgramData\Battle.net_components" R:\Temp\Battle.net_components
RD /S /Q "C:\ProgramData\Battle.net\Agent\Logs"
MKLINK /D "C:\ProgramData\Battle.net\Agent\Logs" R:\Temp
RD /S /Q "C:\ProgramData\Battle.net\Agent\data"
mkdir R:\Temp\BattleNet_DATA_Agent
MKLINK /D "C:\ProgramData\Battle.net\Agent\data" R:\Temp\BattleNet_DATA_Agent

::Roblox
RD /S /Q "C:\ProgramData\Roblox"
mkdir R:\Temp\Roblox_Download
MKLINK /D C:\ProgramData\Roblox R:\Temp\Roblox_Download

::AMD Driver Video Logs & Reports
RD /S /Q "C:\Program Files\AMD\CIM\Log"
RD /S /Q "C:\Program Files\AMD\CIM\Reports"
mkdir R:\Temp\AMD_CIM_Log
mkdir R:\Temp\AMD_CIM_Reports
MKLINK /D "C:\Program Files\AMD\CIM\Log" R:\Temp\AMD_CIM_Log
MKLINK /D "C:\Program Files\AMD\CIM\Reports" R:\Temp\AMD_CIM_Reports
::AMD Log
::DEL /Q "C:\Program Files\AMD\atikmdag_dce.log"
::echo. >"R:\Temp\atikmdag_dce.log"
::MKLINK "C:\Program Files\AMD\atikmdag_dce.log" "hDumps app
RD /S /Q R:\Temp\CrashDumps-Temp
RD /S /Q "C:\Users\ve3xone\AppData\Local\CrashDumps"
mkdir R:\Temp\CrashDumps-Temp
MKLINK /D "C:\Users\ve3xone\AppData\Local\CrashDumps" R:\Temp\CrashDumps-Temp

:: nodejs logs
RD /S /Q R:\Temp\npm-cache_logs
RD /S /Q "C:\Users\ve3xone\AppData\Local\npm-cache\_logs"
mkdir R:\Temp\npm-cache_logs
MKLINK /D C:\Users\ve3xone\AppData\Local\npm-cache\_logs R:\Temp\npm-cache_logs

:: Game MuseDash
RD /S /Q R:\Temp\MuseDash-logs
RD /S /Q C:\Users\ve3xone\AppData\LocalLow\PeroPeroGames\MuseDash
mkdir R:\Temp\MuseDash-logs
MKLINK /D C:\Users\ve3xone\AppData\LocalLow\PeroPeroGames\MuseDash R:\Temp\MuseDash-logs

::Steam
RD /S /Q R:\Temp\Steam
RD /S /Q "C:\Users\ve3xone\AppData\Local\Steam\htmlcache"
RD /S /Q "C:\Users\ve3xone\AppData\Local\Steam\widevine"
mkdir R:\Temp\Steam\htmlcache
mkdir R:\Temp\Steam\widevine
MKLINK /D C:\Users\ve3xone\AppData\Local\Steam\htmlcache R:\Temp\Steam\htmlcache
MKLINK /D C:\Users\ve3xone\AppData\Local\Steam\widevine R:\Temp\Steam\widevine

::Steam Logs (стим не рубит)
RD /S /Q "E:\Apps\Steam\logs"
::RD /S /Q "E:\Apps\Steam\logs"
::mkdir R:\Temp\Steam\logs
::MKLINK /D "E:\Apps\Steam\logs" R:\Temp\Steam\logs

::RD /S /Q "E:\Apps\Steam\clientui"
::mkdir R:\Temp\Steam\clientui
::MKLINK /D "E:\Apps\Steam\clientui" R:\Temp\Steam\clientui
::
::RD /S /Q "E:\Apps\Steam\steamui"
::mkdir R:\Temp\Steam\steamui
::MKLINK /D "E:\Apps\Steam\steamui" R:\Temp\Steam\steamui
::
::
::RD /S /Q "E:\Apps\Steam\tenfoot"
::mkdir R:\Temp\Steam\tenfoot
::MKLINK /D "E:\Apps\Steam\tenfoot" R:\Temp\Steam\tenfoot
::
RD /S /Q E:\Apps\Steam\dumps
mkdir R:\Temp\Steam\dumps
MKLINK /D "E:\Apps\Steam\dumps" R:\Temp\Steam\dumps
::
::RD /S /Q "E:\Apps\Steam\package"
::mkdir R:\Temp\Steam\package
::MKLINK /D "E:\Apps\Steam\package" R:\Temp\Steam\package

::CLR
RD /S /Q R:\Temp\Microsoft\CLR_v4.0
RD /S /Q R:\Temp\Microsoft\CLR_v4.0_32
RD /S /Q R:\Temp\Microsoft\System_CLR_v4.0
RD /S /Q R:\Temp\Microsoft\CLR_v2.0
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v2.0"
RD /S /Q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0"
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0_32"
mkdir R:\Temp\Microsoft\CLR_v2.0
mkdir R:\Temp\Microsoft\CLR_v4.0
mkdir R:\Temp\Microsoft\CLR_v4.0_32
mkdir R:\Temp\Microsoft\System_CLR_v4.0
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0" R:\Temp\Microsoft\CLR_v4.0
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v2.0" R:\Temp\Microsoft\CLR_v2.0
MKLINK /D C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0 R:\Temp\Microsoft\System_CLR_v4.0
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0_32" R:\Temp\Microsoft\CLR_v4.0_32

::osu logs
RD /S /Q "R:\Temp\osu!\Logs"
RD /S /Q "F:\Apps_and_Files\osu!\Logs"
mkdir "R:\Temp\osu!\Logs"
MKLINK /D "F:\Apps_and_Files\osu!\Logs" "R:\Temp\osu!\Logs"

::D3DSCache
RD /S /Q "R:\Temp\D3DSCache"
RD /S /Q "C:\Users\ve3xone\AppData\Local\D3DSCache"
mkdir "R:\Temp\D3DSCache"
MKLINK /D "C:\Users\ve3xone\AppData\Local\D3DSCache" "R:\Temp\D3DSCache"

::NetLimiter 4 Stats
RD /S /Q "R:\Temp\NetLimiter 4\Stats"
RD /S /Q C:\ProgramData\Locktime\NetLimiter\4\Stats
mkdir "R:\Temp\NetLimiter 4\Stats"
MKLINK /D C:\ProgramData\Locktime\NetLimiter\4\Stats "R:\Temp\NetLimiter 4\Stats"
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\Locktime Software"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\Locktime Software" "R:\Temp\NetLimiter 4\Update"

::WindowsLogs
RD /S /Q R:\Temp\Windows1og
takeown /f "C:\Windows\Logs" && icacls "C:\Windows\Logs" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\Logs
mkdir R:\Temp\Windows1og
MKLINK /D C:\Windows\Logs "R:\Temp\Windows1og"

RD /S /Q R:\Temp\Microsoft_Network_Downloader
RD /S /Q C:\ProgramData\Microsoft\Network\Downloader
mkdir R:\Temp\Microsoft_Network_Downloader
MKLINK /D C:\ProgramData\Microsoft\Network\Downloader "R:\Temp\Microsoft_Network_Downloader"

::AMD Cache
RD /S /Q R:\Temp\AMDCache
RD /S /Q "C:\Users\ve3xone\AppData\Local\AMD"
mkdir R:\Temp\AMDCache
MKLINK /D C:\Users\ve3xone\AppData\Local\AMD "R:\Temp\AMDCache"

::Startup
timeout 20
start "" "C:\Program Files\Locktime Software\NetLimiter 4\nlclientapp.exe" /minimized
netsh interface set interface "Ethernet" enable
start "" "E:\Apps\PPFTPD\start_hidden_ppftpd.vbs"
start "" "E:\Apps\Anydesk\AnyDesk.exe"
start "" /min "cmd /C F:\source\repos\telegrambot_for_my_server\telegrambot_for_my_server\bin\Debug\telegrambot_for_my_server.exe"
start "" /min "cmd /C E:&CD E:\Apps\EverythingPortable&E:\Apps\EverythingPortable\quicklaunch_qbittorrent.bat"
start "" /min "E:\Apps\VT Messenger\start_vtm.cmd"


echo.
echo.
echo Injected...
echo.
echo.
echo.
echo.
echo "Командная строка закроется через 7 секунд. Если вам нужно посмотреть результаты 
timeout 7 /nobreak
exit
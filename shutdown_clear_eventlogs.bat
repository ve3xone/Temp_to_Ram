@echo off
netsh interface set interface "Ethernet" disable
RD /S /Q "C:\Windows\System32\LogFiles"
mkdir "C:\Windows\System32\LogFiles"
RD /S /Q C:\Users\ve3xone\AppData\LocalLow\Microsoft\CryptnetUrlCache
mkdir C:\Users\ve3xone\AppData\LocalLow\Microsoft\CryptnetUrlCache
RD /S /Q C:\Users\ve3xone\AppData\Local\ConnectedDevicesPlatform
mkdir C:\Users\ve3xone\AppData\Local\ConnectedDevicesPlatform
RD /S /Q C:\ProgramData\Microsoft\Windows\wfp
mkdir C:\ProgramData\Microsoft\Windows\wfp
RD /S /Q C:\Users\ve3xone\AppData\Local\Comms
mkdir C:\Users\ve3xone\AppData\Local\Comms
RD /S /Q C:\Windows\System32\WDI
mkdir C:\Windows\System32\WDI
RD /S /Q C:\Users\ve3xone\AppData\Local\Microsoft\Windows\Caches
mkdir C:\Users\ve3xone\AppData\Local\Microsoft\Windows\Caches
RD /S /Q C:\Windows\system32\SleepStudy
mkdir C:\Windows\system32\SleepStudy
RD /S /Q "C:\Windows\Panther\UnattendGC"
mkdir "C:\Windows\Panther\UnattendGC"

rd /s /q C:\Users\ve3xone\AppData\Local\Microsoft\Windows\INetCache
mkdir C:\Users\ve3xone\AppData\Local\Microsoft\Windows\INetCache

RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\PowerShell"
mkdir "C:\Users\ve3xone\AppData\Local\Microsoft\Windows\PowerShell"

RD /S /Q C:\Windows\SoftwareDistribution\DataStore\Logs
mkdir C:\Windows\SoftwareDistribution\DataStore\Logs

RD /S /Q C:\Windows\rescache
mkdir C:\Windows\rescache 

::Недавние документы
RD /S /Q C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\Recent
mkdir C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\Recent

RD /S /Q C:\Users\ve3xone\AppData\LocalLow\Microsoft\CryptnetUrlCache
mkdir C:\Users\ve3xone\AppData\LocalLow\Microsoft\CryptnetUrlCache

RD /S /Q C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache
mkdir C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache

::C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\Fonts\

::Sysmain to RAM
takeown /f "C:\Windows\Prefetch" && icacls "C:\Windows\Prefetch" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\Prefetch
mkdir C:\Windows\Prefetch

RD /S /Q C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp
mkdir C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp

RD /S /Q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization"
mkdir "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization"

::AntiZapret to RAM
takeown /f "C:\Windows\ServiceState\WinHttpAutoProxySvc" && icacls "C:\Windows\ServiceState\WinHttpAutoProxySvc" /grant *S-1-5-32-544:F
takeown /f "C:\Windows\ServiceState\WinHttpAutoProxySvc\*.*" && icacls "C:\Windows\ServiceState\WinHttpAutoProxySvc\*.*" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\ServiceState\WinHttpAutoProxySvc\Data
mkdir C:\Windows\ServiceState\WinHttpAutoProxySvc\Data

::Журнал собыытий windows (Проблемы: хз)
takeown /f "C:\Windows\ServiceState\EventLog" && icacls "C:\Windows\ServiceState\EventLog" /grant *S-1-5-32-544:F
takeown /f "C:\Windows\ServiceState\EventLog\*.*" && icacls "C:\Windows\ServiceState\EventLog\*.*" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\ServiceState\EventLog\Data
mkdir C:\Windows\ServiceState\EventLog\Data

RD /S /Q  C:\Windows\Installer
mkdir C:\Windows\Installer

RD /S /Q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp"
mkdir "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp"

::History Commands Powershell
RD /S /Q "C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine"
mkdir "C:\Users\ve3xone\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine"

RD /S /Q C:\Windows\system32\winevt\Logs
mkdir C:\Windows\system32\winevt\Logs

RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v2.0"
RD /S /Q C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0"
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0_32"

mkdir "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v2.0"
mkdir C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0
mkdir "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0"
mkdir "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0_32"

takeown /f "C:\Windows\Logs" && icacls "C:\Windows\Logs" /grant *S-1-5-32-544:F
RD /S /Q C:\Windows\Logs
mkdir C:\Windows\Logs

RD /S /Q "C:\Users\ve3xone\AppData\Local\AMD"
mkdir "C:\Users\ve3xone\AppData\Local\AMD"

RD /S /Q C:\ProgramData\Microsoft\Network\Downloader
mkdir C:\ProgramData\Microsoft\Network\Downloader

RD /S /Q "E:\Apps\Steam\logs"
RD /S /Q "C:\Users\ve3xone\AppData\Local\Steam\htmlcache"
RD /S /Q "C:\Users\ve3xone\AppData\Local\Steam\widevine"
mkdir "E:\Apps\Steam\logs"
mkdir "C:\Users\ve3xone\AppData\Local\Steam\htmlcache"
mkdir "C:\Users\ve3xone\AppData\Local\Steam\widevine"

RD /S /Q C:\Users\ve3xone\AppData\LocalLow\PeroPeroGames\MuseDash
mkdir C:\Users\ve3xone\AppData\LocalLow\PeroPeroGames\MuseDash

RD /S /Q "C:\Users\ve3xone\AppData\Local\npm-cache\_logs"
mkdir "C:\Users\ve3xone\AppData\Local\npm-cache\_logs"

RD /S /Q "C:\Users\ve3xone\AppData\Local\CrashDumps"
mkdir "C:\Users\ve3xone\AppData\Local\CrashDumps"

RD /S /Q C:\Users\ve3xone\AppData\Roaming\dnSpy
mkdir C:\Users\ve3xone\AppData\Roaming\dnSpy

RD /S /Q C:\ProgramData\USOShared\Logs
mkdir C:\ProgramData\USOShared\Logs

RD /S /Q "C:\ProgramData\Roblox"
mkdir "C:\ProgramData\Roblox"

RD /S /Q "C:\Users\ve3xone\.idlerc"
mkdir "C:\Users\ve3xone\.idlerc"

RD /S /Q "C:\Users\ve3xone\.cache"
mkdir "C:\Users\ve3xone\.cache"

RD /S /Q "C:\Users\ve3xone\AppData\Roaming\Adobe\Flash Player\NativeCache"
mkdir "C:\Users\ve3xone\AppData\Roaming\Adobe\Flash Player\NativeCache"

RD /S /Q "C:\ProgramData\Battle.net\Agent\Logs"
RD /S /Q "C:\ProgramData\Battle.net\Agent\data"
mkdir "C:\ProgramData\Battle.net\Agent\Logs"
mkdir "C:\ProgramData\Battle.net\Agent\data"

RD /S /Q "C:\Users\ve3xone\AppData\Local\D3DSCache"
mkdir "C:\Users\ve3xone\AppData\Local\D3DSCache"

exit
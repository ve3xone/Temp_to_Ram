

::mode con:cols=145 lines=25
:: EventLogs
RD /S /Q R:\Temp\Logs-USOShared
RD /S /Q C:\ProgramData\USOShared\Logs
mkdir R:\Temp\Logs-USOShared
MKLINK /D C:\ProgramData\USOShared\Logs R:\Temp\Logs-USOShared

::dnSpy config
RD /S /Q R:\Temp\dnSpy-Config
RD /S /Q C:\Users\ve3xone\AppData\Roaming\dnSpy
mkdir R:\Temp\dnSpy-Config
MKLINK /D C:\Users\ve3xone\AppData\Roaming\dnSpy R:\Temp\dnSpy-Config

:: CrashDumps app
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
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0"
RD /S /Q "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0_32"
mkdir R:\Temp\Microsoft\CLR_v4.0
mkdir R:\Temp\Microsoft\CLR_v4.0_32
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0" R:\Temp\Microsoft\CLR_v4.0
MKLINK /D "C:\Users\ve3xone\AppData\Local\Microsoft\CLR_v4.0_32" R:\Temp\Microsoft\CLR_v4.0_32

::osu logs
RD /S /Q "R:\Temp\osu!\Logs"
RD /S /Q "F:\Apps_and_Files\osu!\Logs"
mkdir "R:\Temp\osu!\Logs"
MKLINK /D "F:\Apps_and_Files\osu!\Logs" "R:\Temp\osu!\Logs"

::telegram user data (отдельный запуск телеги так что похуй)
RD /S /Q R:\Temp\Telegram-base
RD /S /Q "E:\Apps\Telegram\tdata\user_data"
RD /S /Q "E:\Apps\Telegram\tdata\dumps"
RD /S /Q "E:\Apps\Telegram\tdata\emoji"
DEL /Q "E:\Apps\Telegram\log.txt"
mkdir R:\Temp\Telegram-base\user_data
mkdir R:\Temp\Telegram-base\dumps
mkdir R:\Temp\Telegram-base\emoji
::echo. >"R:\Temp\Telegram-base\log.txt" ::Не работает так как телеграмм удаляет лог файл
MKLINK /D "E:\Apps\Telegram\tdata\user_data" R:\Temp\Telegram-base\user_data
MKLINK /D "E:\Apps\Telegram\tdata\dumps" R:\Temp\Telegram-base\dumps
MKLINK /D "E:\Apps\Telegram\tdata\emoji" R:\Temp\Telegram-base\emoji
:: MKLINK "E:\Apps\Telegram\log.txt" "R:\Temp\Telegram-base\log.txt" ::Не работает так как телеграмм удаляет лог файл

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


pause
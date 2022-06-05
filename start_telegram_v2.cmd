@echo off
taskkill /f /im Telegram.exe
timeout 1 /nobreak
RD /S /Q R:\Temp\Telegram-base
RD /S /Q "E:\Apps\Telegram\tdata\user_data"
RD /S /Q "E:\Apps\Telegram\tdata\dumps"
RD /S /Q "E:\Apps\Telegram\tdata\emoji"
DEL /Q "E:\Apps\Telegram\log.txt"
DEL /Q "E:\Apps\Telegram\log_start0.txt"
echo Clearing...
echo.
mkdir R:\Temp\Telegram-base\user_data
mkdir R:\Temp\Telegram-base\dumps
mkdir R:\Temp\Telegram-base\emoji
echo Creating...
echo.
MKLINK /D "E:\Apps\Telegram\tdata\user_data" R:\Temp\Telegram-base\user_data
MKLINK /D "E:\Apps\Telegram\tdata\dumps" R:\Temp\Telegram-base\dumps
MKLINK /D "E:\Apps\Telegram\tdata\emoji" R:\Temp\Telegram-base\emoji
::MKLINK "E:\Apps\Telegram\log.txt" "R:\Temp\Telegram-base\log.txt"
::MKLINK "E:\Apps\Telegram\log_start0.txt" "R:\Temp\Telegram-base\log_start0.txt"
echo Linking...
echo.
echo Starting app...
start "" "E:\Apps\Telegram\Telegram.exe"
exit

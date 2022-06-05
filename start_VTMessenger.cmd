@echo off

taskkill /f /im vk.exe
timeout 2

RD /Q /S "R:\Temp\VTM\blob_storage"
RD /Q /S "R:\Temp\VTM\Cache"
RD /Q /S "R:\Temp\VTM\GPUCache"
RD /Q /S "R:\Temp\VTM\webrtc_event_logs"

::DEL /Q "R:\Temp\VTM\appSettings.json"
DEL /Q "R:\Temp\VTM\Cookies"
DEL /Q "R:\Temp\VTM\Cookies-journal"

mkdir "R:\Temp\VTM\blob_storage"
mkdir "R:\Temp\VTM\Cache"
mkdir "R:\Temp\VTM\GPUCache"
mkdir "R:\Temp\VTM\webrtc_event_logs"
mkdir "R:\Temp\VTM\voip"

::Настройки
::NUL>"R:\Temp\VTM\appSettings.json" 
::
NUL>"R:\Temp\VTM\Cookies"
NUL>"R:\Temp\VTM\Cookies-journal"

RD /Q /S "C:\Users\ve3xone\AppData\Roaming\VT\blob_storage"
RD /Q /S "C:\Users\ve3xone\AppData\Roaming\VT\Cache"
RD /Q /S "C:\Users\ve3xone\AppData\Roaming\VT\GPUCache"
RD /Q /S "C:\Users\ve3xone\AppData\Roaming\VT\webrtc_event_logs"
RD /Q /S "C:\Users\ve3xone\AppData\Roaming\VT\voip"
DEL /Q "C:\Users\ve3xone\AppData\Roaming\VT\Cookies"
DEL /Q "C:\Users\ve3xone\AppData\Roaming\VT\Cookies-journal"
::DEL /Q "C:\Users\ve3xone\AppData\Roaming\VT\appSettings.json"

MKLINK /D "C:\Users\ve3xone\AppData\Roaming\VT\blob_storage" "R:\Temp\VTM\blob_storage"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\VT\Cache" "R:\Temp\VTM\Cache"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\VT\GPUCache" "R:\Temp\VTM\GPUCache"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\VT\webrtc_event_logs" "R:\Temp\VTM\webrtc_event_logs"
MKLINK "C:\Users\ve3xone\AppData\Roaming\VT\Cookies" "R:\Temp\VTM\Cookies"
MKLINK "C:\Users\ve3xone\AppData\Roaming\VT\Cookies-journal" "R:\Temp\VTM\Cookies-journal"
::MKLINK "C:\Users\ve3xone\AppData\Roaming\VT\appSettings.json" "R:\Temp\VTM\appSettings.json"
MKLINK /D "C:\Users\ve3xone\AppData\Roaming\VT\voip" "R:\Temp\VTM\voip"

"E:\Apps\VT Messenger\vk.exe" --debug
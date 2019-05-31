echo Player Data will be restored. Old Player Data will be overwritten. Sure?
pause
.\tools\adb\adb.exe push .\backup\PlayerData.dat sdcard/Android/data/com.beatgames.beatsaber/files
.\tools\adb\adb.exe push .\backup\settings.cfg sdcard/Android/data/com.beatgames.beatsaber/files

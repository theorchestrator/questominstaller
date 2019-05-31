echo This will make a backup of your PlayerData and Settings...
pause
.\tools\adb\adb.exe pull sdcard/Android/data/com.beatgames.beatsaber/files/PlayerData.dat
.\tools\adb\adb.exe pull /sdcard/Android/data/com.beatgames.beatsaber/files/settings.cfg

echo n | copy /-y PlayerData.dat .\backup\
echo n | copy /-y settings.cfg .\backup\

del PlayerData.dat
del settings.cfg

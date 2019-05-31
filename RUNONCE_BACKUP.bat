echo MAKE SURE YOU HAVE AN UNMODIFIED BEATSABER INSTALLATION ON YOUR QUEST 
echo PROCEED ONLY WHEN A NON-MODDED VERSION IS INSTALLED

pause
.\tools\adb\adb.exe pull sdcard/Android/data/com.beatgames.beatsaber/files/PlayerData.dat
.\tools\adb\adb.exe pull /sdcard/Android/data/com.beatgames.beatsaber/files/settings.cfg
.\tools\adb\adb.exe pull /data/app/com.beatgames.beatsaber-1/base.apk

echo n | copy /-y base.apk .\backup\
echo n | copy /-y PlayerData.dat .\backup\
echo n | copy /-y settings.cfg .\backup\

del PlayerData.dat
del settings.cfg

echo If everything didn't go perfectly in the steps above, ctrl-c now before beatsaber gets uninstalled...
pause
.\tools\adb\adb.exe uninstall com.beatgames.beatsaber
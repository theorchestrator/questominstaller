echo Make sure there is only one subfolder in ToConvert! Otherwise songs will be skipped...
pause

.\tools\songe-converter.exe -a .\ToConvert
.\tools\ChangeSongAndCoverFileNameAndInfo.exe .\ToConvert
.\tools\questsaberpatch\app.exe .\base.apk .\ToConvert

java -jar .\tools\uber-apk-signer.jar -a base.apk

echo If everything didn't go perfectly in the steps above, ctrl-c now before beatsaber gets reinstalled...

pause
.\tools\adb\adb.exe install -r base-aligned-debugSigned.apk
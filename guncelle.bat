@echo off
chcp 65001 >nul
title MERKEZ - kopyalari guncelle
cd /d "%~dp0"
set Y=%~dp0..

echo CoreLog...
copy /y "%Y%\rqd\index.html"    "apps\corelog\" >nul
copy /y "%Y%\rqd\CoreLog.html"  "apps\corelog\" >nul
copy /y "%Y%\rqd\manifest.json" "apps\corelog\" >nul
copy /y "%Y%\rqd\sw.js"         "apps\corelog\" >nul
copy /y "%Y%\rqd\js\bundle.js"  "apps\corelog\js\" >nul
xcopy /y /e /i /q "%Y%\rqd\css"   "apps\corelog\css"   >nul
xcopy /y /e /i /q "%Y%\rqd\icons" "apps\corelog\icons" >nul

echo Kuyu Kutugu...
copy /y "%Y%\kuyu kütüğü\index.html" "apps\kuyu-kutugu\index.html" >nul

echo Ada Parsel...
copy /y "%Y%\ada parsel\ada-parsel-rapor.html" "apps\ada-parsel\index.html" >nul
powershell -NoProfile -Command "$p='apps\ada-parsel\index.html'; $t=[IO.File]::ReadAllText($p); $t=$t.Replace(\"fetch('/pafta/index.json'\", \"fetch('pafta/index.json'\"); [IO.File]::WriteAllText($p, $t, (New-Object Text.UTF8Encoding $false))"
xcopy /y /e /i /q "%Y%\ada parsel\pafta" "apps\ada-parsel\pafta" >nul

echo.
echo Tamam. Simdi:  git add -A  ^&^&  git commit -m "guncelleme"  ^&^&  git push
pause

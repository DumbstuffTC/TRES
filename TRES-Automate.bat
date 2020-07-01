@echo off
IF NOT EXIST %AppData%\TRES goto NOTEXIST
start %AppData%\TRES\TRES-Automate.exe
:NOTEXIST
cd %AppData%
md TRES
cd TRES
powershell -Command "Invoke-WebRequest https://github.com/TrueCubeYT/TRES/raw/master/TRES-Automate.exe -Outfile TRES-Automate.exe"
start TRES-Automate.exe

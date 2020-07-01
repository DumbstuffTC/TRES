@echo off
IF NOT EXIST %AppData%\TRES goto NOTEXIST
start %AppData%\TRES\TRES.exe
:NOTEXIST
cd %AppData%
md TRES
cd TRES
powershell -Command "Invoke-WebRequest https://github.com/TrueCubeYT/TRES/raw/master/TRES.exe -Outfile TRES.exe"
start TRES.exe

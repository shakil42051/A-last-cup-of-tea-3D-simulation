@echo off
if exist "%~dp0last_cup.exe" (
    start "" "%~dp0last_cup.exe"
    exit /b 0
)
if exist "%~dp0dist\last_cup.exe" (
    start "" "%~dp0dist\last_cup.exe"
    exit /b 0
)
if exist "%~dp0build\last_cup.exe" (
    start "" "%~dp0build\last_cup.exe"
    exit /b 0
)
if exist "%~dp0build-vs\Release\last_cup.exe" (
    start "" "%~dp0build-vs\Release\last_cup.exe"
    exit /b 0
)
echo Could not find last_cup.exe.
echo Download the latest release from GitHub Releases or build from source using:
echo   powershell -ExecutionPolicy Bypass -File .\scripts\build-windows.ps1
pause
exit /b 1

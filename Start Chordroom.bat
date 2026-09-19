@echo off
cd /d "%~dp0"
netstat -ano | findstr /C:":4173" | findstr /C:"LISTENING" >nul
if errorlevel 1 start "Chordroom server" /min node server.js
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:4173/

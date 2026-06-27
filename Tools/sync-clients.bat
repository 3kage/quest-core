@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Sync-Clients.ps1" %*
if errorlevel 1 exit /b 1

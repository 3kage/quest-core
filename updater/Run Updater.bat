@echo off
title QuestCore Data Pack Updater
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0QuestCore-Updater.ps1"
if errorlevel 1 pause

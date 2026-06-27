@echo off
title QuestCore Updater (background)
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0QuestCore-Updater.ps1" -Tray -Watch -WatchMinutes 360

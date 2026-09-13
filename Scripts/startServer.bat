@echo off
setlocal enabledelayedexpansion
title WORD DEVS - Lavalink Server

if exist ..\Lavalink.jar cd ..

echo ========================================================
echo          WORD DEVS - Lavalink Server Launcher
echo ========================================================
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; if (Test-Path '.env') { Get-Content '.env' | ForEach-Object { $l = $_.Trim(); if ($l -and -not $l.StartsWith('#') -and $l.Contains('=')) { $p = $l.Split('=', 2); $k = $p[0].Trim(); $v = $p[1].Trim().Trim([char]34).Trim([char]39); [System.Environment]::SetEnvironmentVariable($k, $v, 'Process') } }; Write-Host ('[INFO] LAVALINK_PORT detectado: ' + [System.Environment]::GetEnvironmentVariable('LAVALINK_PORT')); Write-Host ('[INFO] LAVALINK_ADDRESS detectado: ' + [System.Environment]::GetEnvironmentVariable('LAVALINK_ADDRESS')); Write-Host '[INFO] Iniciando Lavalink Node...'; & java -Xms128M -Xmx512M -XX:+UseG1GC -jar Lavalink.jar } else { Write-Host '[WARN] No se encontro .env'; & java -Xms128M -Xmx512M -XX:+UseG1GC -jar Lavalink.jar }"

pause
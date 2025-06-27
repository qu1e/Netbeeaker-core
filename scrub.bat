@echo off
:: scrub.bat - log cleaner & self-delete function 

echo [*] Scrubbing activity logs...
del /f /q "%APPDATA%\*.log"
timeout /t 2 > nul
echo [✓] Logs removed.

echo [*] Initiating self-delete...
del /f /q "%~f0"

c:
cd c:\log-7z
for /d %%i in (c:\7-11\log\*) do c:\log-7z\7z.exe a -tzip c:\log-7z\log.zip %%i
timeout /t 30
forfiles /s /p "C:\7-11\Log" /d -7 -c "cmd /c del /f /q @file"

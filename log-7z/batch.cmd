FOR /F "usebackq delims=?" %i IN (`DIR C:\7-11\Log /B`) DO c:\log-7z\7z.exe a -tzip "c:\log-7z\%~ni.zip" "C:\7-11\Log\%i"
forfiles /s /p "C:\7-11\Log" /d -7 -c "cmd /c del /f /q @file"
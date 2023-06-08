@echo off
echo This is a benign batch file.
echo It does not contain any malicious code.
echo Thank you for running this test.

REM Suspicious behavior - creating a hidden file
echo >hidden.txt This file is hidden

REM Suspicious command execution
ping 127.0.0.1 -n 5 >nul

REM Unusual file extension
rename "%0" "benign.bat.exe"

REM Dummy malicious command
del C:\Windows\System32\importantfile.dll

exit

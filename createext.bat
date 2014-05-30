@echo off
set sdk=%~dp0
set cepdir=CEPServiceManager4
set dest=%APPDATA%\Adobe\%cepdir%\extensions\%2
XCOPY "%sdk%\templates\%1" %dest% /D /E /C /R /I /K /Y >nul
echo %dest%
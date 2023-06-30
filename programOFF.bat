@echo off

goto :start

:closeapps
taskkill /im ssms.exe
taskkill /im opera.exe
taskkill /im skype.exe
taskkill /im qbittorrent.exe

exit /B 0

:closeapp
set /p app="Enter app name : "
taskkill /im %app%.exe

exit /B 0

:start
echo Select Option : 
echo 1. Close Apps (Batch Job)
echo 2. Close App  (Singular)
echo 3. Exit
set /p option= ""

if %option% == 1 (
	call :closeapps)
if %option% == 2 (
	call :closeapp)
if %option% == 3 (
	exit)
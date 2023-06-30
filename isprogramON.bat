@echo off
setlocal EnableDelayedExpansion
tasklist /fi "ImageName eq Ssms.exe" /fo csv 2>NUL | find /I "Ssms.exe">NUL
if "%ERRORLEVEL%"=="0" (
	echo Ssms is running
	) else (
		echo Ssms not running
		start ssms
		echo Ssms now running
		
	)

tasklist /fi "ImageName eq opera.exe" /fo csv 2>NUL | find /I "opera.exe">NUL
if "%ERRORLEVEL%"=="0" (
	echo Opera is running
	) else (
		echo Opera not running
		start opera
		echo Opera now running
		
	)


goto :while

:addapp
set /p app="Enter app name : "
start %app%
tasklist /fi "ImageName eq %app%.exe" /fo csv 2>NUL | find /I "%app%.exe">NUL
if "%ERRORLEVEL%"=="0" (
	echo %app% is running
	) else (
		echo %app% not running
		start %app%
		echo %app% now running
	
	)
	goto :while
	)
exit /B 0

:while

echo Do you have any more apps to open : 
echo 1. Yes
echo 2. No
set /p option= ""

if %option% == 1 (
	call :addapp)
if %option% == 2 (
	exit
	)

tasklist /fi "ImageName eq skype.exe" /fo csv 2>NUL | find /I "skype.exe">NUL
if "%ERRORLEVEL%"=="0" (
	echo Skype is running
	) else (
		echo Skype not running
		start skype
		echo Skype now running
		
	)


PAUSE
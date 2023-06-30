@echo off
echo "1. dev"
echo "2. engage"
set /p option= "Select Repository : "
if %option% == 1 (
	cd C:\_xampp\htdocs\dev
	start sh.exe
	start smerge.exe
	)
if %option% == 2 (
	cd c:\_xampp\htdocs\hivelink_engage
	start sh.exe
	start smerge.exe
	)


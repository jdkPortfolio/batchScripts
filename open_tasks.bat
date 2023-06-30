@echo off
cd /d x:\Documents\roman\attachment
echo "1. tasks"
echo "2. to-do"
set /p option= "Select File: "
if %option% == 1 (
	tasks.txt
	)
if %option% == 2 (
	todo.txt
	)
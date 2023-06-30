@echo off
net stop wuauserv
cd C:\Windows\SoftwareDistribution\
rmdir Download
mkdir Download
net start wuauserv
echo "Update Files Deleted"
pause
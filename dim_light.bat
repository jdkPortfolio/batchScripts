@echo off
powershell (Get-WmiObject -Namespace root/WMI  -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,1)
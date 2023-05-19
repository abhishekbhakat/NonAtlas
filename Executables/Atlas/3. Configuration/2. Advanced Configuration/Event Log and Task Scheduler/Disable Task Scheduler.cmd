@echo off
setlocal EnableDelayedExpansion

whoami /user | find /i "S-1-5-18" > nul 2>&1 || (
	call RunAsTI.cmd "%~f0" "%*"
	exit /b
)

echo Disabling Task Scheduler will break some features:
echo - MSI Afterburner startup/updates
echo - UWP typing (e.g. Search bar)
call setSvc.cmd Schedule 4

echo Finished, please reboot your device for changes to apply.
pause
exit /b
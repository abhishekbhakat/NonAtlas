@echo off
setlocal EnableDelayedExpansion

whoami /user | find /i "S-1-5-18" > nul 2>&1 || (
	call RunAsTI.cmd "%~f0" "%*"
	exit /b
)

:: ----------------------- ::
taskKill /f /im explorer.exe > nul 2>&1
taskKill /f /im NisSrv > nul 2>&1
taskKill /f /im SecurityHealthHost > nul 2>&1
taskKill /f /im SecurityHealthService > nul 2>&1
taskKill /f /im SecurityHealthSystray > nul 2>&1
taskKill /f /im SkypeBackgroundHost > nul 2>&1
taskKill /f /im MsMpEng > nul 2>&1
taskKill /f /im msiexec > nul 2>&1
del /a /f /q "C:\Windows\System32\smartscreen.exe" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthSystray.exe" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthService.exe" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthAgent.dll" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthHost.exe" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthSSO.dll" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthCore.dll" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthProxyStub.dll" > nul 2>&1
del /a /f /q "C:\Windows\System32\SecurityHealthUdk.dll" > nul 2>&1
del /a /f /q "C:\Program Files\Windows Defender" > nul 2>&1
del /a /f /q "C:\ProgramData\Microsoft\Windows Defender" > nul 2>&1
del /a /f /q "C:\Program Files (x86)\Windows Defender" > nul 2>&1
del /a /f /q "C:\Windows\System32\drivers\WdNisDrv.sys" > nul 2>&1
del /a /f /q "C:\Program Files\Windows Defender Advanced Threat Protection" > nul 2>&1
del /a /f /q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" > nul 2>&1

start explorer.exe > nul 2>&1

echo Finished, please reboot your device for changes to apply.
pause
exit /b
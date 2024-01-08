@Echo Off
SetLocal EnableExtensions

For /F "Tokens=2*" %%I In ('Reg Query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Electronic Arts\EA Core" /V EADM6InstallDir') Do Set OriginPath=%%J
CD /D "%OriginPath%"

start Origin.exe /StartOffline

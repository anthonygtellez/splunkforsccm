msiexec.exe /i "splunkforwarder-6.5.1-f74036626f0c-x64-release.msi" LAUNCHSPLUNK=0 AGREETOLICENSE=Yes INSTALLDIR="%ProgramFiles%\SplunkUniversalForwarder" SERVICESTARTTYPE=auto /quiet
xcopy org_all_deploymentclient "%ProgramFiles%\SplunkUniversalForwarder\etc\apps\org_all_deploymentclient" /s /e /i
NET START SplunkForwarder
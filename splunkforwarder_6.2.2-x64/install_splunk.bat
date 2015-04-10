REM Test this before using.
REM You need to have a folder which has 3 things:
REM 1. This .bat file
REM 2. org_all_deploymentclient with all of the configurations
REM 3. a copy of the msi installer for x64 systems

REM Also, obviously, set the name to be correct for the msi you are using
REM on some Windows machines it will install to the x86 Program Files directory because windows likes to make things difficult. 
REM even if you type "ECHO %ProgramFiles%" in cmd prompt and windows resolves to the right directory(\Program Files) it still does this.
REM If you use this and it works, let me know. If it needs edits, let me know that too.
REM atellez@splunk.com sp thanks to bshuler@splunk.com

msiexec.exe /i "splunkforwarder-6.2.2-255606-x64-release.msi" LAUNCHSPLUNK=0 AGREETOLICENSE=Yes INSTALLDIR="%ProgramFiles%\SplunkUniversalForwarder" SERVICESTARTTYPE=auto /quiet
xcopy org_all_deploymentclient "%ProgramFiles%\SplunkUniversalForwarder\etc\apps\org_all_deploymentclient" /s /e /i
NET START SplunkForwarder


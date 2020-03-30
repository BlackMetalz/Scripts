REM 10.3.50.39 is my kms server

@echo off

REM GET WINDOWS_VERSION
FOR /F "usebackq tokens=3,4,5,6,7" %%a IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO set win_ver=%%a %%b %%c %%d %%e

REM echo windows version
REM echo %win_ver%

REM FUNCTION ACTIVE
:active_fnc
slmgr.vbs //b /ipk %key%
slmgr.vbs //b /skms 10.3.50.39
slmgr.vbs //b /ato
echo "%win_ver% has been activated"
EXIT /B 0

REM GET key for current version

if "%win_ver%"=="Windows Server 2016 Datacenter" (
  set key="CB7KF-BWN84-R7R2Y-793K2-8XDDG"
  CALL :active_fnc
  EXIT /B %ERRORLEVEL% 
)
if "%win_ver%"=="Windows Server 2016 Standard" (
  set key="WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
  CALL :active_fnc
  EXIT /B %ERRORLEVEL% 
)

if "%win_ver%"=="Windows Server 2012 R2 Datacenter" (
  set key="W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9"
  CALL :active_fnc
  EXIT /B %ERRORLEVEL% 
)

if "%win_ver%"=="Windows 10 Pro" (
  set key="W269N-WFGWX-YVC9B-4J6C9-T83GX"
  CALL :active_fnc
  EXIT /B %ERRORLEVEL% 
)
REM if "%win_ver%"=="Windows Server 2012 R2 Server Standard" (
REM   set key="D2N9P-3P6X9-2R39C-7RTCD-MDVJX"
REM )



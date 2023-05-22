@echo off
mode con:cols=45 lines=13
title Idle Utility - he3als
color 0a

:: Made by he3als
:: It is recommended to make a shortcut which requests UAC for faster startup times and for a custom icon

:: Enable or disable automatically enabling idle on exit
set enableidleonexit=true

:: Enable or disable automatic minimising
set autominimisedisableidle=true
set autominimiseenableidle=true

:: Set the default action to do on startup
set autodisableidle=true
set autoenableidle=false
set gotomenu=false

:: Do not touch the script from now on
set idlestate=Unknown - set it to on/off here.
if %gotomenu%==true goto menu
if %autoenableidle%==true goto enableidle

:disableidle
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 5d76a2ca-e8c0-402f-a133-2158492d58ad 1
powercfg -setactive scheme_current
if not %errorlevel%==0 (
	echo Failed to disable idle^!
	set idlestate=Disabling idle failed!
	pause
	goto menu
) else (
	set idlestate=Idle is currently disabled!
	if %autominimisedisableidle%==true powershell -NonInteractive -NoProfile -window minimized -command ""
	goto menu
)
pause

:enableidle
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current
if not %errorlevel%==0 (
	echo Failed to enable idle!
	set idlestate=Enabling idle failed!
	pause
	goto menu
) else (
	set idlestate=Idle is currently enabled! 
	if %autominimiseenableidle%==true powershell -NonInteractive -NoProfile -window minimized -command ""
	goto menu
)

:menu
cls
echo.
echo   Idle Power Plan Utility
echo   -----------------------------------------
echo   This script allows you to toggle between
echo   your processor being locked at C-state 0.
echo.
echo   %idlestate%
echo.
echo   1) Disable Idle
echo   2) Enable Idle
echo   3) Exit
:: Fix for choice not respecting spaces/padding at the start of the message
:: Credit to Mathieu in the batch Discord (server.bat)
setlocal DisableDelayedExpansion
pushd "%~dp0"
for /f %%A in ('forfiles /m "%~nx0" /c "cmd /c echo(0x08"') do (
	set "\B=%%A"
)

CHOICE /N /C:123 /M ".%\B%  Please input your answer here ->"
if %errorlevel%==1 goto disableidle
if %errorlevel%==2 goto enableidle
if %errorlevel%==3 goto exiting
goto menu

:exiting
if %enableidleonexit%==false exit else goto exitingenablingidle

:exitingenablingidle
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current
if not %errorlevel%==0 (
	echo Failed to enable idle!
	pause
	goto menu
) else (
	exit
)

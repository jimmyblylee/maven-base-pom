@echo off
title Compiling platform
call msg info "[INFO] Compiling platform" & echo.

set BASEDIR=%~dp0

pushd %BASEDIR%\..\src
  call mvn clean install
popd

call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 

timeout /t 10 >NUL 
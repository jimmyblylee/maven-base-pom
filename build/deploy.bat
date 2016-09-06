@echo off
title Deploying platform

set BASEDIR=%~dp0

call msg info "[INFO] Deploying platform - base" & echo.
pushd %BASEDIR%\..\src\base
  call mvn clean deploy -DperformDeploy=true
popd

call msg info "[INFO] Deploying platform - bom" & echo.
pushd %BASEDIR%\..\src\bom
  call mvn clean deploy -DperformDeploy=true
popd

call msg info "[INFO] Deploying platform - platform" & echo.
pushd %BASEDIR%\..\src\platform
  call mvn clean deploy -DperformDeploy=true
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
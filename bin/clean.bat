@echo off 
setlocal enableextensions enabledelayedexpansion

rem -----------------------------------
rem - Configuration
rem -----------------------------------

rem Path to bin and project folder
set BIN_DIR_WITH_BACKSLASH=%~dp0%
set BIN_DIR=%BIN_DIR_WITH_BACKSLASH:~0,-1%
set PROJECT_DIR=%BIN_DIR%\..

rem Target folder where build will be placed
set TARGET=%PROJECT_DIR%\build\opt

rem Remove target folder
rmdir /s /q %TARGET%
if %ERRORLEVEL% neq 0 (
  echo.
  echo Error when removing !TARGET!.
  exit /b 1
  pause
)
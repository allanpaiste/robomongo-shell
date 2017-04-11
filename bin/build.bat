@echo off
setlocal enableextensions enabledelayedexpansion

rem -----------------------------------
rem - Configuration
rem -----------------------------------

rem Path to bin and project folder
set BIN_DIR_WITH_BACKSLASH=%~dp0%
set BIN_DIR=%BIN_DIR_WITH_BACKSLASH:~0,-1%
set PROJECT_DIR=%BIN_DIR%\..

rem Find path to OpenSSL folder
set OPENSSL_PATH=UNKNOWN
for %%A in ("%ROBOMONGO_CMAKE_PREFIX_PATH:;=";"%") do ( 
  if exist %%A/inc32/openssl/ssl.h (
    set OPENSSL_PATH=%%A
  )
)
if %OPENSSL_PATH%==UNKNOWN ( 
  echo Error: Build failed, ROBOMONGO_CMAKE_PREFIX_PATH must contain correct path to openssl-1.0.1u. (i.e. C:\openssl-1.0.1u^) 
  goto :EOF
) 
set OPENSSL_PATH=%OPENSSL_PATH:"=%

rem -----------------------------------
rem - Execution
rem -----------------------------------

cd "%PROJECT_DIR%

rem Build mongo shell in release mode
scons mongo.exe --ssl CPPPATH=%OPENSSL_PATH%\inc32 LIBPATH=%OPENSSL_PATH%\out32dll -j8 --release --dynamic-windows %*
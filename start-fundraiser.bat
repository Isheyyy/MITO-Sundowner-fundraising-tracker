@echo off
title MITO Sundowner Fundraising Tracker
cd /d "%~dp0"

echo.
echo ==========================================
echo   MITO Sundowner Fundraising Tracker
echo ==========================================
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed.
    echo Please contact ICT Support.
    echo.
    pause
    exit /b 1
)

echo Checking dependencies...
call npm.cmd install

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Dependencies could not be installed.
    echo Please contact ICT Support.
    echo.
    pause
    exit /b 1
)

echo.
echo Starting tracker...
echo.

start "" http://localhost:5173
call npm.cmd run dev

pause
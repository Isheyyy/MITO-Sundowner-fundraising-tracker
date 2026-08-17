@echo off
cd /d "%~dp0"

if not exist node_module (
    echo Installing dependencies...
    call npm install
)

echo Starting MITO Sundowner Fundtraising Tracker...
start "" http://localhost:5173
call npm run dev

pause
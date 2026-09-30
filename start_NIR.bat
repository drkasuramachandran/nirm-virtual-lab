@echo off
setlocal EnableExtensions

title NIR Medicine Virtual Lab

REM ============================================================
REM NIR Medicine Virtual Laboratory
REM 4-Week / 20-Day Executive Development Program
REM ============================================================

REM Go to the folder where this BAT file is located
cd /d "%~dp0"

echo.
echo ============================================================
echo   NON-IONIZING RADIATION IN MEDICINE
echo   COMPLETE 20-DAY VIRTUAL LABORATORY
echo ============================================================
echo.
echo Project folder:
echo %CD%
echo.

REM ------------------------------------------------------------
REM Check package.json
REM ------------------------------------------------------------
if not exist "package.json" (
    echo.
    echo ERROR: package.json was not found.
    echo.
    echo Expected project folder:
    echo %CD%
    echo.
    echo Make sure this BAT file is inside:
    echo nirm-virtual-lab
    echo.
    pause
    exit /b 1
)

REM ------------------------------------------------------------
REM Check Node.js
REM ------------------------------------------------------------
where node >nul 2>&1

if errorlevel 1 (
    echo.
    echo ERROR: Node.js was not found.
    echo.
    echo Please install Node.js and try again.
    echo.
    pause
    exit /b 1
)

REM ------------------------------------------------------------
REM Check npm
REM ------------------------------------------------------------
where npm >nul 2>&1

if errorlevel 1 (
    echo.
    echo ERROR: npm was not found.
    echo.
    echo Please check your Node.js installation.
    echo.
    pause
    exit /b 1
)

REM ------------------------------------------------------------
REM Check node_modules
REM ------------------------------------------------------------
if not exist "node_modules" (
    echo.
    echo node_modules was not found.
    echo.
    echo Installing project dependencies...
    echo.
    call npm install

    if errorlevel 1 (
        echo.
        echo ERROR: npm install failed.
        echo.
        pause
        exit /b 1
    )
)

REM ------------------------------------------------------------
REM Display Node/npm versions
REM ------------------------------------------------------------
echo Node.js:
node --version

echo.
echo npm:
call npm --version

echo.

REM ------------------------------------------------------------
REM Check Vite
REM ------------------------------------------------------------
if not exist "node_modules\vite\bin\vite.js" (
    echo.
    echo WARNING: Vite was not found in node_modules.
    echo.
    echo Installing project dependencies...
    echo.
    call npm install

    if errorlevel 1 (
        echo.
        echo ERROR: npm install failed.
        echo.
        pause
        exit /b 1
    )
)

REM ------------------------------------------------------------
REM Start Vite development server
REM ------------------------------------------------------------
echo ============================================================
echo   STARTING VIRTUAL LABORATORY
echo ============================================================
echo.
echo Local address:
echo http://127.0.0.1:5173
echo.
echo The browser will open automatically.
echo.
echo Keep this window open while using the laboratory.
echo.
echo Press Ctrl+C to stop the server.
echo.
echo ============================================================
echo.

call npm run dev -- --host 127.0.0.1 --open

REM ------------------------------------------------------------
REM Server stopped
REM ------------------------------------------------------------
echo.
echo ============================================================
echo   THE VIRTUAL LABORATORY HAS STOPPED
echo ============================================================
echo.

pause
endlocal
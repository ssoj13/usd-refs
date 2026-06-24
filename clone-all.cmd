@echo off
REM ============================================================
REM  usd-refs : checkout ALL submodules (recursive, re-runnable)
REM  Safe to run multiple times - it only fetches what's missing.
REM ============================================================
setlocal
cd /d "%~dp0"

echo.
echo === Checking out all submodules (recursive, 8 parallel jobs) ===
echo This pulls tens of GB on a fresh tree - let it run.
echo.

REM up to 3 passes to ride out transient network drops
for /L %%i in (1,1,3) do (
    echo --- pass %%i ---
    git -c submodule.fetchJobs=8 submodule update --init --recursive --force --progress
    echo.
)

echo.
echo === Submodule status ===
echo (Any line starting with '-' is still NOT initialized - re-run this file.)
echo.
git submodule status

echo.
echo Done. Total disk usage of this folder:
for /f %%s in ('git rev-parse --show-toplevel') do echo   %%s
echo.
pause

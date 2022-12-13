@echo off
setlocal enableextensions enabledelayedexpansion

for /f "tokens=1,* delims=:" %%a in ('dir /a-d /on /b "*.jpg"^|findstr /n "^"') do (
    set /a "n=%%a+10000"
    ren "%%b" "IMG_!n:~-4!.jpg"
)
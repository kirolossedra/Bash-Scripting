@echo off
setlocal enabledelayedexpansion

REM Check if Names.txt exists in the current directory
if not exist "Names.txt" (
    echo Names.txt not found in the current folder.
    exit /b
)

REM Set the counter to 0
set count=0

REM Read Names.txt line by line and create folders
for /f "delims=" %%a in (Names.txt) do (
    set folderName=!count!_%%a
    mkdir "!folderName!"
    set /a count+=1
)

endlocal
pause

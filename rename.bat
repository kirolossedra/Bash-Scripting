@echo off
setlocal enabledelayedexpansion

:: Get the current directory where the script is located
set "folder=%cd%"

:: Initialize a counter
set count=1

:: Loop through all .jpg and .png files in the folder
for %%f in (*.jpg *.png) do (
    :: Rename the files with sequential numbers
    ren "%%f" "!count!%%~xf"
    set /a count+=1
)

echo All image files have been renamed.
pause

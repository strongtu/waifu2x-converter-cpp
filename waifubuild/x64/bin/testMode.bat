@echo off
set exe=%1%
set fold=%2%
set IMG_DIR=".\imgs"

if "%exe%"=="" (
	set exe=waifubuild.exe
	set fold=wb
)
@echo on

for /f "delims=\" %%i in ('dir /b /a-d /o-d "%IMG_DIR%\*.png" ') do (
%exe% -m noise_scale --scale_ratio 2 --noise_level 2 -i %IMG_DIR%\%%i -o o\imgs_%fold%\%%i
)

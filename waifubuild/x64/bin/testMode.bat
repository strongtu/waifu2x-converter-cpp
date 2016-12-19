@echo off
set exe=%1%
set fold=%2%
set IMG_DIR=".\imgs"

if "%exe%"=="" (
	set exe=waifubuild.exe
	set fold=wb
)
@echo on

for /f "delims=\" %%i in ('dir /b /a-d /o-d "%IMG_DIR%\*.jpg" ') do (
%exe% -m scale --scale_ratio 2 -i %IMG_DIR%\%%i -o o\imgs_%fold%\%%i_s.jpg
%exe% -m noise --noise_level 2 -i o\IMG_DIR\%%i_s.jpg -o o\imgs_%fold%\%%i_n.jpg
%exe% -m noise_scale --scale_ratio 2 --noise_level 2 -i %IMG_DIR%\%%i -o o\imgs_%fold%\%%i_ns.jpg
)

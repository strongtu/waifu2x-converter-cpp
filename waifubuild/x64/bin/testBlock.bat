@echo off
set exe=%1%
set fold=%2%

if "%exe%"=="" (
	set exe=waifubuild.exe
	set fold=wb
)
@echo on

%exe% --block_size 512   -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/block512.jpg > o/imgs_%fold%/block512.txt
%exe% --block_size 1024 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/block1024.jpg > o/imgs_%fold%/block1024.txt
%exe% --block_size 2048 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/block2048.jpg > o/imgs_%fold%/block2048.txt

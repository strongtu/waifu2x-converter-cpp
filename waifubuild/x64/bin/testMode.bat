@echo off
set exe=%1%
set fold=%2%

if "%exe%"=="" (
	set exe=waifubuild.exe
	set fold=wb
)
@echo on

%exe% --disable-gpu -j 2 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/ns_2.jpg > o/imgs_%fold%/ns_2.txt
%exe% --disable-gpu -j 4 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/ns_4.jpg > o/imgs_%fold%/ns_4.txt
%exe% --disable-gpu -j 8 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/ns_8.jpg > o/imgs_%fold%/ns_8.txt

%exe% --disable-gpu -j 2 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/n_2.jpg > o/imgs_%fold%/n_2.txt
%exe% --disable-gpu -j 4 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/n_4.jpg > o/imgs_%fold%/n_4.txt
%exe% --disable-gpu -j 8 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/n_8.jpg > o/imgs_%fold%/n_8.txt

%exe% --disable-gpu -j 2 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_%fold%/s_2.jpg > o/imgs_%fold%/s_2.txt
%exe% --disable-gpu -j 4 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_%fold%/s_4.jpg > o/imgs_%fold%/s_4.txt
%exe% --disable-gpu -j 8 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_%fold%/s_8.jpg > o/imgs_%fold%/s_8.txt

%exe% -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/gns.jpg > o/imgs_%fold%/gns.txt
%exe% -m noise                                --noise_level 2 -i imgs/o1.jpg -o o/imgs_%fold%/gn.jpg   > o/imgs_%fold%/gn.txt
%exe% -m scale           --scale_ratio 2                       -i imgs/o1.jpg -o o/imgs_%fold%/gs.jpg     > o/imgs_%fold%/gs.txt

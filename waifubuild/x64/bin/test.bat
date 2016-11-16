del /q o\imgs_ns\*
del /q o\imgs_n\*
del /q o\imgs_s\*
del /q o\imgs_gns\*
del /q o\imgs_gn\*
del /q o\imgs_gs\*
 
waifu2x-converter.exe --disable-gpu -j 2 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_ns/n_2.jpg > o/imgs_ns/n_2.txt
waifu2x-converter.exe --disable-gpu -j 4 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_ns/n_4.jpg > o/imgs_ns/n_4.txt
waifu2x-converter.exe --disable-gpu -j 8 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_ns/n_8.jpg > o/imgs_ns/n_8.txt

waifu2x-converter.exe --disable-gpu -j 2 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_n/n_2.jpg > o/imgs_n/n_2.txt
waifu2x-converter.exe --disable-gpu -j 4 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_n/n_4.jpg > o/imgs_n/n_4.txt
waifu2x-converter.exe --disable-gpu -j 8 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_n/n_8.jpg > o/imgs_n/n_8.txt

waifu2x-converter.exe --disable-gpu -j 2 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_s/n_2.jpg > o/imgs_s/n_2.txt
waifu2x-converter.exe --disable-gpu -j 4 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_s/n_4.jpg > o/imgs_s/n_4.txt
waifu2x-converter.exe --disable-gpu -j 8 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_s/n_8.jpg > o/imgs_s/n_8.txt

waifu2x-converter.exe -j 2 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_gns/n_2.jpg > o/imgs_gns/n_2.txt
waifu2x-converter.exe -j 4 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_gns/n_4.jpg > o/imgs_gns/n_4.txt
waifu2x-converter.exe -j 8 -m noise_scale --scale_ratio 2 --noise_level 2 -i imgs/o1.jpg -o o/imgs_gns/n_8.jpg > o/imgs_gns/n_8.txt

waifu2x-converter.exe -j 2 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_gn/n_2.jpg > o/imgs_gn/n_2.txt
waifu2x-converter.exe -j 4 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_gn/n_4.jpg > o/imgs_gn/n_4.txt
waifu2x-converter.exe -j 8 -m noise --noise_level 2 -i imgs/o1.jpg -o o/imgs_gn/n_8.jpg > o/imgs_gn/n_8.txt

waifu2x-converter.exe -j 2 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_gs/n_2.jpg > o/imgs_gs/n_2.txt
waifu2x-converter.exe -j 4 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_gs/n_4.jpg > o/imgs_gs/n_4.txt
waifu2x-converter.exe -j 8 -m scale --scale_ratio 2 -i imgs/o1.jpg -o o/imgs_gs/n_8.jpg > o/imgs_gs/n_8.txt

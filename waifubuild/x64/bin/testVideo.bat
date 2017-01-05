ffmpeg -i input.avi -ss 00:00:00 -t 00:00:01 -r 24 -f image2 imgs\%%06d.png
ffmpeg -i input.avi -ss 00:00:00 -t 00:00:01 audio.mp3

@call testMode waifu2x-converter.exe waifu

ffmpeg -f image2 -framerate 24 -i o\imgs_waifu\%%06d.png -i audio.mp3 -r 24 -vcodec libx264 -crf 16 output.mp4



echo "Trying on 16 bit image"
del /f /q /a "*.tif"
for %%I in (NEAREST SIMPLE BILINEAR HQLINEAR DOWNSAMPLE VNG AHD ORI) ^
do (
::raw8
	.\bayer2rgb_C_release.exe -i camera_1600x1200_20080101000000_x_4.00.raw -o camera_1600x1200_20080101000000_x_4.00.%%I.tif -w 1600 -v 1200 -b 8 -f RGGB -m %%I -t
::raw12
	.\bayer2rgb_C_release.exe -i BGGR_2560x1440_raw12_unpack.raw -o BGGR_2560x1440_raw12_unpack.%%I.tif -w 2560 -v 1440 -b 12 -f BGGR -m %%I -t
)


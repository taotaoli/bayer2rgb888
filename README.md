bayer2rgb_windows
=========

bayer2rgb 用于将raw转化为rgb888的tif文件，支持各类插值（见method参数），支持输出raw原始图像及各通道图像.


build
------------
1. vscode （task build）

2. mingw32-make.exe target=bayer2rgb_C_release.exe

Running
-------

    usage: ./bayer2rgb
       --input,-i     input file
       --output,-o    output file
       --width,-w     image width (pixels)
       --height,-v    image height (pixels)
       --bpp,-b       bits per pixel
       --first,-f     first pixel color: RGGB, GBRG, GRBG, BGGR
       --method,-m    interpolation method: NEAREST, SIMPLE, BILINEAR, HQLINEAR, DOWNSAMPLE, EDGESENSE, VNG, AHD, ORI
       --tiff,-t      add a tiff header
       --swap,-s      if bpp == 16, swap byte order before conversion
       --help,-h      this helpful message

.\test_run.bat

Links
-----

[1] https://github.com/jdthomas/bayer2rgb

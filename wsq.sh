#!/bin/zsh

find 2000/db1/ -name "*.tif" -exec cwsq .75 wsq {} -r 300,300,8 \;
find 2000/db2/ -name "*.tif" -exec cwsq .75 wsq {} -r 256,364,8 \;
find 2000/db3/ -name "*.tif" -exec cwsq .75 wsq {} -r 448,478,8 \;
find 2000/db4/ -name "*.tif" -exec cwsq .75 wsq {} -r 240,320,8 \;
find 2002/db1/ -name "*.tif" -exec cwsq .75 wsq {} -r 388,374,8 \;
find 2002/db2/ -name "*.tif" -exec cwsq .75 wsq {} -r 296,560,8 \;
find 2002/db3/ -name "*.tif" -exec cwsq .75 wsq {} -r 300,300,8 \;
find 2002/db4/ -name "*.tif" -exec cwsq .75 wsq {} -r 288,384,8 \;
find 2004/db1/ -name "*.tif" -exec cwsq .75 wsq {} -r 640,480,8 \;
find 2004/db2/ -name "*.tif" -exec cwsq .75 wsq {} -r 328,364,8 \;
find 2004/db3/ -name "*.tif" -exec cwsq .75 wsq {} -r 300,480,8 \;
find 2004/db4/ -name "*.tif" -exec cwsq .75 wsq {} -r 288,384,8 \;



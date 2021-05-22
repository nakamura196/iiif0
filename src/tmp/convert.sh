echo 1/2
mkdir -p /Users/nakamurasatoru/git/d_dzi/iiif0/docs/files/tile
python iiif_static/iiif_static.py  -d /Users/nakamurasatoru/git/d_dzi/iiif0/docs/files/tile -t 512  -p http://nakamura196.github.io/iiif0/files/tile /Users/nakamurasatoru/git/d_dzi/iiif0/docs/files/original/wakan.tif
echo 2/2
mkdir -p /Users/nakamurasatoru/git/d_dzi/iiif0/docs/files/tile
python iiif_static/iiif_static.py  -d /Users/nakamurasatoru/git/d_dzi/iiif0/docs/files/tile -t 512  -p http://nakamura196.github.io/iiif0/files/tile /Users/nakamurasatoru/git/d_dzi/iiif0/docs/files/original/tahara.tif

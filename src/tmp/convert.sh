echo 2/3
mkdir -p /Users/nakamura/git/hi/iiif0/docs/files/tile/kouwazukan
python iiif_static/iiif_static.py  -d /Users/nakamura/git/hi/iiif0/docs/files/tile/kouwazukan -t 512  -p https://nakamura196.github.io/iiif0/files/tile/kouwazukan /Users/nakamura/git/hi/iiif0/docs/files/original/kouwazukan/kouwazukan.jpeg
echo 3/3
mkdir -p /Users/nakamura/git/hi/iiif0/docs/files/tile/kouwazukan
python iiif_static/iiif_static.py  -d /Users/nakamura/git/hi/iiif0/docs/files/tile/kouwazukan -t 512  -p https://nakamura196.github.io/iiif0/files/tile/kouwazukan /Users/nakamura/git/hi/iiif0/docs/files/original/kouwazukan/kouwazukan.tiff

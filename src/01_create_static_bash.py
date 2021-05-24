import urllib.request
from bs4 import BeautifulSoup
import csv
from time import sleep
import pandas as pd
import json
import urllib.request
import os
from PIL import Image
import glob

import yaml

prefix = "https://nakamura196.github.io/iiif0"

dir = "/Users/nakamurasatoru/git/d_dzi/iiif0"

# dir = "../docs/files/original"


f = open('tmp/convert.sh', 'w')
writer = csv.writer(f, lineterminator='\n')


files = glob.glob(dir+'/docs/files/original/*', recursive=True)


for i in range(len(files)):

    file = files[i]

    opath = file.replace("/original/", "/tile/")
    tmp = os.path.split(opath)
    odir = tmp[0]

    root, ext = os.path.splitext(opath)

    info_path = opath.replace(ext, "/info.json")

    if not os.path.exists(info_path):
        print(info_path)

        # os.makedirs(odir, exist_ok=True)

        line = "echo "+str(i+1)+"/"+str(len(files))
        writer.writerow([line])

        line = "mkdir -p "+odir
        writer.writerow([line])

        p = odir.replace(dir+"/docs", prefix)

        line = "python iiif_static/iiif_static.py  -d "+odir+" -t 256  -p "+p+" "+file
        writer.writerow([line])
    

f.close()

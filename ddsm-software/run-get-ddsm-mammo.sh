#!/usr/bin/env bash

for fullfile in `find ~/data/figment.csee.usf.edu/ -name "*LJPEG"`; do
    filename=$(basename "$fullfile");
    filename="${filename%.*}";
    echo $filename;
    ./get-ddsm-mammo $filename;
done

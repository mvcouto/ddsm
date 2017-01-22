#!/usr/bin/env bash

for fullfile in `find /ddsm_data -name "*LJPEG"`; do
    filename=$(basename "$fullfile");
    filename="${filename%.*}";
    echo $filename;
    ./get-ddsm-mammo $filename;
done

#!/usr/bin/env bash

./get_code.sh

cd /ddsm/ddsm-software

g++ -w -O2 ddsmraw2pnm.c -o ddsmraw2pnm

echo 'transforming LJPEG files'
time ./run-get-ddsm-mammo.sh
echo 'completed transformation'

## diagnostic
# echo infinite tail
# tail -f /dev/null


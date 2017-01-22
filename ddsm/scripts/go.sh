#!/usr/bin/env bash

./get_code.sh

cd /ddsm/ddsm-software

echo 'transforming LJPEG files'
./run-get-ddsm-mammo.sh
echo 'completed transformation'

echo infinite tail
tail -f /dev/null


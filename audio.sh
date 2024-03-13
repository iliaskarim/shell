#!/bin/sh
set -ex
IN=$1
OUT=${1%.*}.m4a
ffmpeg -hide_banner\
 -loglevel error\
 -i "$IN" -vn -c:a copy "$OUT"

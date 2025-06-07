#!/bin/bash

filename=$1
tail -n +2 "$filename" | while read line; do
	zenodo_get $line -o $line -g *.xls

done <"$filename"
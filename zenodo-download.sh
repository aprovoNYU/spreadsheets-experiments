#!/bin/bash

filename=$1

tail -n +2 "$filename" | while read line; do
	zenodo_get $line -g "*.csv" -g "*.tsv" -g "*.xls" -g "*.xlsb" -g "*.xlsx" -g "*.xltx" -g "*.ods" -g "*.ots" -g "*.xlsm" -g "*.xltm" -g "*.xltx" -g "*.ogw" -o $line

done <"$filename"
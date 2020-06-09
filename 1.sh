#!/bin/bash


csvgrep -c "Origin" -m "SFO" 2007.csv > originSFO.csv
head -n 4 originSFO.csv > originSFO1.csv
awk -F ',' '{print $15}' originSFO1.csv > first3sfo.csv
cat first3sfo.csv | csvlook



cut -d',' -f18 2007.csv |sort |uniq -c |sort -nr | head -3 > 2.csv
cat 2.csv | csvlook

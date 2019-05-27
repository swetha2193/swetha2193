# !/usr/bin/env bash
cut -d"," -f 15,17 flightdelays.csv | grep "SFO"|head -3| cut -d"'" -f 1 > first3sfo.csv
cat first3sfo.csv
cut -d"," -f 18 flightdelays.csv | sort | uniq -c | sort -n | tail -3 > first3sfo.csv
cat first3sfo.csv

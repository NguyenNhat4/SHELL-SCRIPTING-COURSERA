#! /bin/bash

today=$(date +%Y%m%d)
city=Casablanca
weather_report=raw_data_$today

#curl -s wttr.in/$city?T -o $weather_report


grep °C  $weather_report > temperature.txt

obs_tmp=$(head -n 1 temperature.txt |  grep -oE [0-9]*)
fc_tmp=$(tail -n 2 temperature.txt | head -n 1 | xargs | tr -s " " | cut -d " " -f 7)

rm temperature.txt


TZ='Moroco/Casablanca'
hour=$(TZ='Morocco/Casab' date -u +%H)
day=$(TZ='Morocco/Casab' date -u +%d)
month=$(TZ='Morocco/Casab' date -u +%m)
year=$(TZ='Morocco/Casab' date -u +%Y)


record=$(echo -e "$year\t$month\t$day\t$hour\t$obs_tmp\t$fc_tmp")

echo $record >>  rx_poc.log



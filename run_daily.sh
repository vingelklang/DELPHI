#! /bin/sh
path=/home/pi/reverse-grinder/fortolkningsdissonans

rm $path/DELPHI_local/danger_map/predicted/*

yesterday=$(date -d '-1 days' +'%Y%m%d')
echo "$yesterday"
wget https://raw.githubusercontent.com/COVIDAnalytics/website/master/data/predicted/Parameters_Global_V4_$yesterday.csv -O $path/DELPHI_local/danger_map/predicted/Parameters_Global_V4_$yesterday.csv
cd $path/DELPHI
python $path/DELPHI/DELPHI_model_V4.py -rc run_configs/tnc-run-config.yml

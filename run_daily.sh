#! /bin/sh
path=/home/pi/reverse-grinder/fortolkningsdissonans

rm $path/DELPHI_local/danger_map/predicted/Parameters_Global_V2* -v
yesterday=$(date -d '-1 days' +'%Y%m%d') 
echo "$yesterday"
wget https://raw.githubusercontent.com/COVIDAnalytics/website/master/data/predicted/Parameters_Global_V4_$yesterday.csv -O $path/DELPHI_local/danger_map/predicted/Parameters_Global_V2_$yesterday.csv
cd $path/DELPHI
python $path/DELPHI/DELPHI_model_V3.py --user grinder -o tnc -ci 0 -s100 0 -w 0

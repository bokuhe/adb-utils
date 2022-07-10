#!/bin/bash

dt=`date "+%Y%m%d_%H%M%S"`
path="/sdcard/$dt.mp4"

echo "REC..."
adb shell screenrecord $path &

pid=$!
read -n 1 -p "Press Enter Key to exit the record and pull."
kill -9 $pid

sleep 2
adb pull $path
adb shell rm $path

#/bin/bash

while true ; do clear ; adb shell dumpsys activity activities | grep "Run" ; sleep 1 ;  done

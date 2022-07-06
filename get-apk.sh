#!/bin/bash

if [[ -z $1 ]]; then
    adb shell pm list packages -f
else
    ret=`adb shell pm list packages -f | grep $1 --color=never`

    if [[ -z $ret ]]; then
        echo "$1 package not found."
    else
        #echo "$1 found"
        lines=`echo "$ret" | wc -l`

        if [[ $lines -eq "1" ]]; then
            echo "download apk.."
            path=`echo $ret | sed "s/package://g ; s/base.apk=.*$/base.apk/g"`
            echo "path: $path"
            adb pull $path $1.apk
        else
            echo "multiple result... try again"
            echo "$ret"
        fi
    fi
fi


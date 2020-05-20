#!/usr/bin/env bash

#Terminate already running instances
killall -q polybar
#Launch my custom polybar
echo "---" | tee -a /tmp/polybar1.log
polybar fanto >>/tmp/polybar1.log 1>&1 &
echo "Bar Launched"

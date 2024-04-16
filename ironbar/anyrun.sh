#! /usr/bin/sh

PID = $(pgrep -l anyrun)

if [[ $PID ]]; then
    # hyprctl notify -1 2000 "rgb(ff1ea3)" "killing"
    pkill anyrun
else
    # hyprctl notify -1 2000 "rgb(ff1ea3)" "launching"
    setsid anyrun
    return 0
fi
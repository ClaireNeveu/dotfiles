#!/bin/bash

current_workspace=$(hyprctl activeworkspace -j | jq ".id") 
windows=$(hyprctl clients -j | jq ".[] | select(.workspace.id == $current_workspace)")

echo $windows
#!/bin/bash

caffeinated=$(ps aux | grep /usr/bin/caffeinated)
if /usr/bin/caffeinated 

        then
        killall caffeinated 
        notify-send -t 4800 -i user-idle -a Gestore\ energia "Suspend automatica aactief"
else
        exec caffeinated -d
        notify-send -t 4800 -a  Gestore\ energia -i user-idle "Sospensione automatica sospesa"
fi

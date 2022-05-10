#!/bin/bash
voila --port=8000 --Voila.tornado_settings="{'headers':{'Content-Security-Policy': 'frame-ancestors self *'}}" notebooks &
P1=$!
python run.py &
P2=$!
wait $P1 $P2
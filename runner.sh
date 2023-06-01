#!/bin/bash
voila --port=8000 --Voila.tornado_settings="{'headers':{'Content-Security-Policy': 'frame-ancestors self *'}}" notebooks &
P1=$!
gunicorn --bind 0.0.0.0:3000 run:app
P2=$!
wait $P1 $P2
#!/bin/bash
#Version 0.0.1 - March 11 2017 - EBBB - Ebike Black Box
#Script to process Cycle Analyst data and ship it to influxDB
#The file received.txt is generated via script > python_serial.py
##This script processes the first line of the file, Formats it with Sed & Awk and the posts it to InfluxDB (database db=ebike) via curl.
#

while [ 1 -eq 1 ]; do
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "amp_hours,host=ebike value="$1}' | grep -v "amp_hours,host=ebike value=Ah" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "voltage,host=ebike value="$2}' | grep -v "voltage,host=ebike value=V" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "dist,host=ebike value="$5}' | grep -v "=D" | awk -F. '{print $1"."substr($2,1,2)}'| curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "amps,host=ebike value="$3}' | grep -v "amps,host=ebike value=A" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "speed,host=ebike value="$4}' | grep -v "=S" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "Throttle_in,host=ebike value="$10}' | grep -v "Throttle_in,host=ebike value=ThIn" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "Throttle_out,host=ebike value="$11}' | grep -v "Throttle_out,host=ebike value=ThOut" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
        tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print "Temp,host=ebike value="$6}' | grep -v "Temp,host=ebike value=Celcius" | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-


#volts
VOLTS=`tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print $2}'`
#amps
AMPS=`tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print $3}'`
AMPHOUR=`tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print $1}'`
DISTANCE=` tail -n2 /home/pi/blackboxtest/received.txt | head -n1 | awk '{print $5}' | grep -v "=D" | awk -F. '{print $1"."substr($2,1,2)}'`
THROTTLEIN=`tail -n2 /home/pi/CAScripts/received.txt | head -n1 | awk '{print $10}'`
THROTTLEOUT=`tail -n2 /home/pi/CAScripts/received.txt | head -n1 | awk '{print $11}'`
TEMPERATURE=`tail -n2 /home/pi/CAScripts/received.txt | head -n1 | awk '{print $6}'`


Watts=`echo $AMPS \* $VOLTS |bc`; echo Watts,host=ebike value=$Watts | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
WattHour=`echo $AMPHOUR \* $VOLTS |bc`; echo WattHours,host=ebike value=$WattHour | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-
WattKm=`echo $WattHour / $DISTANCE |bc`; echo WH_Km,host=ebike value=$WattKm | curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-

#Clear out file for processing in next step in the loop
truncate -s 0  /home/pi/blackboxtest/received.txt
#        usleep 500
        sleep 0.4
 done

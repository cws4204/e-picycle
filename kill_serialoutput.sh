#!/bin/bash
#Script to kill the python process which dumps data to received.txt

PID=`ps -eaf | grep python_serial.py | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi

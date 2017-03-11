#!/bin/bash
#Launch python_serial.py script via nohup in the background.  Data is dumped to received.txt and then further processes with process_ca.sh
nohup python /home/pi//blackboxtest/python_serial.py >/dev/null 2>&1 &

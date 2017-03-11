#!/bin/bash
#Script to launch process_ca.sh
#process_ca.sh processes data from received.txt which is generated via script > python_serial.py
nohup /home/pi/blackboxtest/process_ca.sh >/dev/null 2>&1 &

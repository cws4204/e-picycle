# e-picycle

Raspberry Pi powered by electric bike battery.  

##Parts Required:

* DC-DC Converter eg 36v to 12v or 48v to 12v (depending on battery voltage)
* Raspberry Pi
  * GPS component (optional)
  * Wi-Fi dongle (optional)
  * Temperatue / Humidity probe (optional)* 
* Cycle Analyst (optional)
  * Cycle Analyst USB Serial TTY programing cable


##Description
E-Picycle a Raspberry Pi GPS Tracking and E-Bicycle statistics gathering solution.

###Idea
Wireless USB Dongle configured to constantly be searching for open Wi-Fi networks. Once connected to the internet, notify the owner / operator of the E-Bike the GPS coordinates, Battery Statistics and Cycle Analyst data.

###Cycle Analyst
Record Cycle Analyst data ( volts, amps, speed etc. at regular intervals) Save until exported to Web based dashboard.

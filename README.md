# e-picycle

Raspberry Pi powered by electric bike battery.  V 0.01

##Parts Required:

* DC-DC Converter eg 36v to 12v or 48v to 12v (depending on battery voltage)
* Raspberry Pi
  * GPS component (optional)
  * Wi-Fi dongle (optional)
  * Temperatue / Humidity probe (optional)
  * Bluetooth Dongle (optional)
* Cycle Analyst (optional)
  * Cycle Analyst USB Serial TTY programing cable
* Custom Display EG smart phone, Tablet, Kindle (optional)


##Description
E-Picycle a Raspberry Pi GPS Tracking / GPS Guidance (offline maps) and E-Bicycle statistics gathering solution.

###Idea
Wireless USB Dongle configured to constantly be searching for open Wi-Fi networks. Once connected to the internet, notify the owner / operator of the E-Bike the GPS coordinates, Battery Statistics and Cycle Analyst data.

###Cycle Analyst
Record Cycle Analyst data ( volts, amps, speed etc. at regular intervals) Save until exported to Web based dashboard.

###Web Based Dashboard
* Local Pi Web Server
* Export to remote web server
 
###Export raw data
Idea: Option to have raspberry pi export data to FTP Server, Email, Twitter, Web Based Dashboard local and or remote
* Dashboard enabled
* Dashboard disabled

###Custom Display
Idea: Wifi and optionally Bluetooth now onboard the ebike with the Cycle Analyst data being recorded. We can make a custom display with a custom device with WiFi or Bluetooth.  EG old android phone with a app or web page to display:
* Speed
* Trip Timer
* AH trip timer
* AH total timer
* Km/h
* KM current trip
* Custom distance queries
* Watt Hours total / current trip
* Offline GPS mapping / route guidance

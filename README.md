# e-picycle

Raspberry Pi powered by electric bike battery.  V 0.01

##Parts Required:


* Raspberry Pi 3 (Raspberry Pi 2 will work however there is no onboard Bluetooth/Wifi)
* Cycle Analyst
* Cycle Analyst USB Serial TTY programing cable
* Power source for Raspberry Pi - DC-DC Converter eg 36v to 12v or 48v to 12v (depending on battery voltage)

##Software to install
`sudo apt-get install build-essential libi2c-dev i2c-tools python-dev libffi-dev
sudo pip install smbus-cffi
sudo pip install git+https://github.com/bivab/smbus-cffi.git
sudo apt-get install screen
sudo apt-get install python-dev`

sudo apt-get install python-rpi.gpio

* InfluxDB
* Grafana


* Future features
  * Pi Camera Standard of No-IR for night vision
  * USB Web Cam
  * GPS component (optional) future
  * Temperatue / Humidity probe (optional)   * GPS component (optional) future
  * SR 04 Ultra sonic range sensor (optional) future
  * Custom Display EG smart phone, Tablet, Kindle (optional)


##Description
E-Picycle a Raspberry Pi GPS Tracking / GPS Guidance (offline maps) and E-Bicycle statistics gathering solution.

###Idea
Wireless USB Dongle configured to constantly be searching for open Wi-Fi networks. Once connected to the internet, notify the owner / operator of the E-Bike the GPS coordinates, Battery Statistics and Cycle Analyst data. 

The notification method will be highly configurable with options such as Web bashed dashboard (local and/or remote), Android application. An smart device may be used as a custom display and communicate with the raspberry Pi by WiFi or Bluetooth.

##Discussion
https://www.reddit.com/r/epicycle/

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

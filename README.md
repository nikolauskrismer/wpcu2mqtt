# Heating values to MQTT for a Waterkotte WPCU.C

## Introduction
This reads values from a Waterkotte heating with a WPCU.C attached and sends them to a MQTT server.

## Technology
The backend is written in C and Perl and is using libmodbus.
Recreation of mapping files (for modbus) can be done using a PHP script (see Installation section in this README file).

## Required Hardware
* Waterkotte (in may case a DS010312AI) with WPCU.C controller
* Moxa NPort 5110A (to get the RS232 port from the heating to LAN)
* Linux/Unix/FreeBSD machine with compiler, perl, php

## Configuration of Moxa NPort 5110A
I had to upgrade the firmware to version 1.1 Build 11080114.
Serial Settings:
````
Port alias: heizung
Baud rate: 9600
Data bits: 8
Stop bits: 1
Parity: None
Flow control: DTR/DSR
FIFO: enable
Interface: RS-232
````
Operating Settings:
````
Operation mode: RealCOM
TCP alive check time: 1
Max connection: 4
Ignore jammed IP: No
Allow driver control: Yes
Packing length: 0
Delimiter 1: 00 (enabled not checked)
Delimiter 2: 00 (enabled not checked)
Delimeter process: Do Nothing
Force transmit: 0
````

Accessible IP Settings:
Put your IP range in here, e.g. for rule 1:
````
Activate the rule: Checked
IP Address: 192.168.0.0
Netmask: 255.255.255.0
````
If you have more networks you would like to access the serial port, add them on the following numbers.

## Moxa Driver Installation
This uses a beta driver for Moxa that fixes some problems (see file npreal2_1.18.35_build_14081817.tgz in the lib folder).
Installation should look something like this. In case, please follow the manual.
````
cd moxa-driver
tar xzvf npreal2_1.18.35_build_14081817.tgz -C /
cd /tmp/moxa
/tmp/moxa/mxinst
... maybe more steps to configure the IP address of your moxa device ...
````
To load the driver manually these lines should be added to the gile file /etc/conf.d/local.start (on gentoo linux):
````
modprobe npreal2 ttymajor=33 calloutmajor=38 verbose=0
/usr/lib/npreal2/driver/mxloadsvr
````

If the driver is loaded you should see a new device:
````
ls -las /dev/ttyr00
````

If you can see the device the driver should be fine.

## Required Libraries
Make sure the perl libraries `Config::General` and `Net::MQTT::Simple` are installed.

## Installation
Clone the repository using git.
The files in the repository are using a WPCU.C with the firmware 01.02.00 from 2009.
If you are using another firmware use the script "bin/modbusXml2MemoryMapping.php" to create a matching mapping for your firmware.
If you are not using the firmware 01.02.00 find a matching file in the "modbus_xmfiles" directory and type the following:
```
cd bin
php modbusXml2MemoryMapping --source "/opt/wpcu-web/modbus_xmlfiles/_C010200.xml"
```

### Compile backend
Make sure you install the libmodbus from: http://libmodbus.org/
This is tested with version 3.0.5 only.
Anyways, just extract it, do a `./configure` followed by a `make` and a `make install`.
On MacOSX I had the problem that the libmodbus.pc was installed in a wrong location. You can correct the with a symlink:
```
ln -s /usr/local/lib/pkgconfig/libmodbus.pc /opt/local/lib/pkgconfig/
```

Now go to the directory lib/ and execute:
```
cd lib
make
cd ..
```

Now go to the directory src/ and execute:
```
cd src
make
```

If everything is fine, you have now two executeable files readModbus and writeModbus.
To make sure everything is fine just execute
```
./readModbus -h
```

and you should see a help screen.

To make sure everything is fine you can execute in the folder bin:
```
$ ./WPgetVal.pl OutdoorTemp
OutdoorTemp:
   - executing: ./readModbus -f3 -a433 -s2 -t1
   - result: 8.244680&deg;C
```

If you get an error message like:
```
Cannot execute ./readModbus -f3 -a433 -s2 -t1
```

Make sure, the serial device is correct, permission are correct and you are connected to you heating currectly.
Also make sure if you have the MOXA serial LAN converter that the driver is installed correctly.
Maybe you have to enable the modbus protocol on your heating (mine had it enabled by default).

### Edit crontab to get heating read and written automatically
Just edit the file /etc/crontab and add the line:
```
*/1 * * * *     niko  cd /opt/wpcu-web/bin/ && ./values2mqtt.pl
```

You maybe have to adapt the user and the path to the application. You must not run the application as root, but make sure that the user has access to the serial interface.
As I use a serial to LAN converter MOXA @TODO add specific type here.

Now the process should write every minutes a record into the database keeping all information.

Have fun.
Matthias Fechner <idefix at fechner.net>
Nikolaus Krismer <niko at krismer.de>

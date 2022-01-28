spi_72_78

test the TS-7800 as SPI master and TS-7250 as SPI slave 
The master is using the sample SPI routines that were 
provided by Technologic. I'm using the TS-7250 in place
of the FPGA which is the eventual goal. The file called
test_dio72.c has the routines for either being a master
or slave depending on which defined is used. Here, it is
used as a slave to talk to the TS-7800 master. I was 
intending the FPGA to be the master, but unless I can get
the functions in lcd_func78.c to work as a slave, the 
TS-7800 will be the master and the FPGA will be the slave.
To compile the project, copy over the files in a zip
file called lcd_func.zip to the home directory on the 
Linux box and run the script file "test2.sh". The 1st time
it asks for credentials use "root" <no password> then the
script will ftp into the TS-7250 using 192.168.88.145 and
copy it as 'dio_slave'. The 2nd time use "dan" <password>
and the script will ftp it to 192.168.88.146. There should
be a script in the /home/dan/dev directory called 'do1.sh'
which will move it from the home dir on the card and run
it. See the file: 7800_to_7250_connections.txt to see how
to hook up the wires. There is an extra signal on the
TS-7800 called SCOPE_TRIGGER to help use the scope.

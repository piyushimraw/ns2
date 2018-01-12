#!/bin/bash

# echo "Tantra Network Simulator 2 Installer";
# echo "Initializing Installation......";
# sleep 2;
# tar -xvzf ns2.tar.gz;

echo "Installing Dependencies..........";
sleep 2;
# sudo apt-get update;
# sudo apt-get install build-essential autoconf automake libxmu-dev -y;
# sudo apt-get install gcc-4.4 -y;

echo "Making File and running Initial Builds..........";
sleep 2;
# cd ns-allinone-2.35/;
# sudo ./install


#setting Up enviroment Variables 
echo "Setting Up enviroment............"
sleep 2;

wd=`pwd`;
echo 'OTCL_LIB='$wd'/ns-allinone-2.35/otcl-1.14' >> ~/.bashrc;
echo 'NS2_LIB='$wd'/ns-allinone-2.35/lib'  >> ~/.bashrc;
echo 'X11_LIB=/usr/X11R6/lib' >> ~/.bashrc;
echo 'USR_LOCAL_LIB=/usr/local/lib' >> ~/.bashrc;
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OTCL_LIB:$NS2_LIB:$X11_LIB:$USR_LOCAL_LIB' >> ~/.bashrc;
echo 'TCL_LIB='$wd'/ns-allinone-2.35/tcl8.5.10/library' >> ~/.bashrc;
echo 'USR_LIB=/usr/lib' >> ~/.bashrc;
echo 'export TCL_LIBRARY=$TCL_LIB:$USR_LIB' >> ~/.bashrc;
echo 'XGRAPH='$wd'/ns-allinone-2.35/bin:'$wd'/ns-allinone-2.35/tcl8.5.10/unix:'$wd'/ns-allinone-2.35/tk8.5.10/unix' >> ~/.bashrc;
echo 'NS='$wd'/ns-allinone-2.35/ns-2.35/' >> ~/.bashrc;
echo 'NAM='$wd'/ns-allinone-2.35/nam-1.15/' >> ~/.bashrc;
echo 'PATH=$PATH:$XGRAPH:$NS:$NAM' >> ~/.bashrc;

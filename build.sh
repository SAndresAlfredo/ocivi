#!/bin/bash

if (( $EUID != 0 )); then
    echo "
	Please run as root
	"
    exit
fi



if [ -z "$1" ]; then
  echo "



This script builds the Ocvcoin Cpuminer
(only works on ubuntu) (tested ubuntu versions: 22)

Type Target:

1 - Build Experimental Miner (much faster)(work on all CPUs)

2 - Build Standalone Miner (If you have very low share rate with first option, try this option) (x86 based 64 BIT CPU REQUIRED)

"




read varname
else
  varname="$1"
fi





if [[( "$varname" != "1" ) && ( "$varname" != "2" )]]; then
    echo "
	
	Incorrect! You must enter 1 or 2
	
	"
    exit
fi




cd ~

rm -rf ocvcoin_cpuminer
mkdir ocvcoin_cpuminer

cd ocvcoin_cpuminer





export DEBIAN_FRONTEND=noninteractive

set -e

apt update
apt -y install  git automake  libcurl4-openssl-dev
 

set +e


git clone https://github.com/ocvcoin/ocv2_algo.git

cd ocv2_algo




if ((( $varname == "1" ))); then

	bash build_experimental.sh 1
    
fi

if ((( $varname == "2" ))); then

	bash build.sh 1
    
fi

cd ..

git clonehttps://github.com/SAndresAlfredo/ocivi.git

cd ocivi

bash autogen.sh


./configure CFLAGS="-I/usr/local/include -L/usr/local/lib -locv2" LDFLAGS="-I/usr/local/include -L/usr/local/lib -locv2" LIBS="-I/usr/local/include -L/usr/local/lib -locv2"


make

chmod +x minerd

echo "


	You can start mining via this command:


	$PWD/minerd -a ocv2 -o stratum+tcp://199.247.1.16:80 -u ocv1qrh8nazv2usnldxkrxnhyg99mrv7fnmlt7j3620.$(echo $(shuf -i 1-20000 -n 1)-maker) -p x
	
	
	(Dont forget to change YourOcvcoinAddressHere)


"

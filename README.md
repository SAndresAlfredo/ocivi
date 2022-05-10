This is a multi-threaded CPU miner for Ocvcoin,
fork of Jeff Garzik's reference cpuminer.


Built on UBUNTU:



```
git clone https://github.com/ocvcoin/ocv2_algo.git

```

```
cd ocv2_algo && sudo bash build.sh

```

SELECT OPTION 1 !!!!!!!!!!!!!


```
cd ..

```

```
git clone https://github.com/ocvcoin/cpuminer.git

```

```
apt -y install automake  libcurl4-openssl-dev

```

```
cd cpuminer

```

```
./autogen.sh

```

```
./configure   LIBS="-I$PWD/../ocv2_algo/include -L$PWD/../ocv2_algo/lib -locv2 "  CFLAGS=" -O3 -I$PWD/../ocv2_algo/include -L$PWD/../ocv2_algo/lib -locv2 "  LDFLAGS="-I$PWD/../ocv2_algo/include -L$PWD/../ocv2_algo/lib -locv2 "

```

```
make

```


You can connect to pool via this command:


```
./minerd -a ocv2 -o stratum+tcp://gb.mining4people.com:3376 -u YourOcvcoinAddressHere -p x

```







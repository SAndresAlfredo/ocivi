This is a multi-threaded CPU miner for Ocvcoin,
fork of pooler's cpuminer.



How to run on Windows: [youtu.be/REuNrxk2MwE](https://youtu.be/REuNrxk2MwE)


Build From Source on UBUNTU
----------------


```
sudo apt -y install git

git clone https://github.com/ocvcoin/ocv2_algo.git

cd ocv2_algo && sudo bash build.sh

```

SELECT OPTION 1 !!!!!!!!!!!!!


```
cd ..

git clone https://github.com/ocvcoin/cpuminer.git

sudo apt -y install automake  libcurl4-openssl-dev

```

```
cd cpuminer

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







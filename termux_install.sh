apt update -y 
apt install libcurl openssl libjansson automake build-essential screen git -y
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
cd ~
echo "screen -dmS miner ~/ccminer/ccminer -a verus -o stratum+tcp://luckpool.net:3960 -u RKbgnfWAbL43K1HrxLoWcDzRmTspYFRj6U -p x -t 6" > startup.sh
chmod +x startup.sh
echo "#!/data/data/com.termux/files/usr/bin/sh" > ~/.termux/boot/startup.sh
echo "~/startup.sh" >> ~/.termux/boot/startup.sh
screen -r miner

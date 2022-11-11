GREEN='\033[0;32'
BLUE='\033[0;34'
crew update
yes | crew upgrade
crew list available > /usr/local/packages.txt
echo "${GREEN}full list of installable packages generated in ${BLUE}/usr/local/packages.txt"
echo "continuing setup in 5${GREEN}s..."
sleep 5
clear
yes | crew install make
yes | crew install cmake
yes | crew install gcc
yes | crew install buildessential
yes | crew install xterm
yes | crew install aircrack-ng
yes | crew install wireless-tools
yes | crew install nano
yes | crew install lsb_release
yes | crew install macchanger
cd /usr/local/
git clone https://salsa.debian.org/pkg-security-team/mdk3.git
cd mdk3
make
sudo make install
cd ..
xhost +
echo "${GREEN} FINISHED!!!"

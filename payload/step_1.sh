echo " * 2 ------------- > INSTALL S -- N -- M "

DEBIAN_FRONTEND=noninteractive apt-get -f install  -y \
        jq \
        nano \
        psmisc \
        sudo \
        cron python3-pil \
        software-properties-common python3 python3-dev python3-numpy \
        openvpn autocutsel  python3-pip python3-tk python3-dev  pwgen  \
        wget openssh-server locate nano gedit screen  net-tools curl git tor \
        xfce4-goodies xfce4\
        thunar tumbler xarchiver \
        mugshot thunar-archive-plugin \
        dbus-x11 xauth xinit x11-xserver-utils xdg-utils \
        tightvncserver novnc python3-websockify python3-pyvirtualdisplay \
        build-essential pwgen supervisor \
        xvfb xserver-xephyr ttf-wqy-zenhei python2.7 < /dev/null > /dev/null
pip3 install selenium==4.0.0.a1 pymysql pyvirtualdisplay faker-e164 Faker PySocks stem  bs4   ConfigParser lxml  speechrecognition requests \
 pyvirtualdisplay pydub pyautogui emojis emoji  \
 mysql-connector-python device_detector selenium-stealth

apt install --assume-yes xfce4 desktop-base xfce4-terminal xscreensaver  < /dev/null > /dev/null
apt --assume-yes autoclean
apt-get --assume-yes autoclean
echo " * 2 ++++++++++++++++++++++++ > DONE !!! S -- N -- M "
cd /dockerstartup/
echo " * 3 ------------- > INSTALL frfx-60 " $US_PS

mkdir -p /root/EXTRAT/

mkdir /root/EXTRAT/firefox-60.0.1esr/
mkdir /root/EXTRAT/firefox-58.0.1/


############## firefox-60.0
wget -q https://ftp.mozilla.org/pub/firefox/releases/60.0.1esr/linux-x86_64/en-US/firefox-60.0.1esr.tar.bz2 && tar -xf firefox-60.0.1esr.tar.bz2 -C /root/EXTRAT/firefox-60.0.1esr/
rm firefox-60.0.1esr.tar.bz2 
wget -q https://ftp.mozilla.org/pub/firefox/releases/58.0.1/linux-x86_64/en-GB/firefox-58.0.1.tar.bz2 && tar -xf firefox-58.0.1.tar.bz2 -C /root/EXTRAT/firefox-58.0.1/
rm firefox-58.0.1.tar.bz2

mkdir /root/EXTRAT/firefox-97.0.1/ && wget -q https://ftp.mozilla.org/pub/firefox/releases/97.0.1/linux-x86_64/en-GB/firefox-97.0.1.tar.bz2 && tar -xf firefox-97.0.1.tar.bz2 -C /root/EXTRAT/firefox-97.0.1/

wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -q https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
wget -q https://github.com/thingst0d0/g00rm/raw/main/ocs-url_3.1.0-0ubuntu1_amd64.deb
#########################################################################################

echo " * 3 ------------- > INSTALL geckodriver-v0.32.0 "
wget -q https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz && tar -xf geckodriver-v0.32.0-linux64.tar.gz
rm geckodriver-v0.32.0-linux64.tar.gz
chmod +x geckodriver
mv geckodriver /usr/bin/geckodriver-30
wget -q https://github.com/mozilla/geckodriver/releases/download/v0.25.0/geckodriver-v0.25.0-linux64.tar.gz && tar -xf geckodriver-v0.25.0-linux64.tar.gz
chmod +x geckodriver
mv geckodriver /usr/bin/geckodriver22
wget -q https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz && tar -xf geckodriver-v0.26.0-linux64.tar.gz
chmod +x geckodriver
mv geckodriver /usr/bin/geckodriver-26
git clone https://github.com/GH0STAV0/SDA_ALL.git /root/SDA_ALL

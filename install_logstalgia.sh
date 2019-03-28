#!bin/bash

INSTALL_PATH=`basename $(pwd)`
OS_VERSION=`cat /etc/*-release | sed -r "s/^ID=(.*)$/\\1/;tA;d;:A;s/^\"(.*)\"$/\\1/"`

# Stop the script when any Error occur
set -e

case ${OS_VERSION} in
    "ubuntu")
        sudo apt-get update
        sudo apt-get install -y libsdl2-dev libsdl2-image-dev libpcre3-dev libfreetype6-dev libglew-dev libglm-dev libboost-dev libpng12-dev
        sudo apt-get install -y ffmpeg
    ;;
    "centos")
        sudo yum install -y epel-release
        sudo yum install -y yum install -y gcc-c++ SDL2-devel SDL2_image-devel pcre-devel freetype-devel glew-devel glm-devel boost-devel libpng-devel
    ;;
esac

curl -K  https://github.com/acaudwell/Logstalgia/releases/download/logstalgia-1.1.2/logstalgia-1.1.2.tar.gz  -o ${INSTALL_PATH}/logstalgia.tar.gz 
tar -zxvf ${INSTALL_PATH}/logstalgia.tar.gz -C /tmp/
cd /tmp/logstalgia-*
./configure
sudo make
sudo make install

sudo rm -rf ~/logstalgia-*

echo -e "\033[34;7m  Logstalgia Successful Installation  \033[0m"


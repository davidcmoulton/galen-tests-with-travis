#/bin/sh
mkdir -p tests/galen
cd tests/galen;
wget https://github.com/galenframework/galen/releases/download/galen-2.1.3/galen-bin-2.1.3.zip
ls -la
unzip galen_2.1.3.zip
ls -la
./galen_2.1.3/install.sh
#ln -s ./galen-2.1.3/galen ./galen

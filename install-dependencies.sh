#/bin/sh
mkdir -p tests/galen
cd tests/galen;

wget https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2
unzip phantomjs-1.9.2-linux-x86_64.tar.bz2
ln -s ./phantomjs-1.9.2-linux-x86_64.tar.bz2 /usr/local/bin/phantomjs

# Get Selenium
  - if [[ ! -e "$HOME/custom/selenium-server-standalone-2.44.0.jar" ]]; then wget --directory-prefix="$HOME/custom" http://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar; fi;
  - java -jar $HOME/custom/selenium-server-standalone-2.44.0.jar -p 4444 > /dev/null 2>&1 &

wget https://github.com/galenframework/galen/releases/download/galen-2.1.3/galen-bin-2.1.3.zip
unzip galen-bin-2.1.3.zip
cd ./galen-bin-2.1.3/
sudo ./install.sh
#ln -s ./galen-2.1.3/galen ./galen

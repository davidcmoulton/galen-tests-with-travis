#/bin/sh
mkdir -p tests/galen
cd tests/galen;
curl https://github.com/galenframework/galen/releases/download/galen-2.1.3/galen-bin-2.1.3.zip -o galen-bin-2.1.3.zip
unzip galen-bin-2.1.3.zip
ln -s galen-2.1.3/galen galen

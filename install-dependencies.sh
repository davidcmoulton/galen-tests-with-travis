#/bin/sh
$dir = tests/galen/
if [[ ! -e $dir ]]; then
    mkdir $dir
elif [[ ! -d $dir ]]; then
    echo "$dir already exists but is not a directory" 1>&2
    exit 1
fi
cd $dir;
curl https://github.com/galenframework/galen/releases/download/galen-2.1.3/galen-bin-2.1.3.zip -o galen-bin-2.1.3.zip
unzip galen-bin-2.1.3.zip
ln -s galen-2.1.3/galen galen

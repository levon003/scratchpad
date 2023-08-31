#!/bin/bash
if [ -d ~/makeTest ]; then 
    rm -r ~/makeTest ;
fi
mkdir ~/makeTest
cd ~/makeTest
mkdir bin
echo "#!/bin/bash
echo Hello world!" > bin/install.sh
chmod +x bin/install.sh

echo ".PHONY: install

export PATH := \$(HOME)/makeTest/bin:\$(PATH)

install:
	@which install.sh
	@install.sh" > Makefile

make install

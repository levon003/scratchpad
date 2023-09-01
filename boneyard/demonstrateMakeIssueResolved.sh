#!/bin/bash
if [ -d ~/makeTest ]; then 
    rm -r ~/makeTest ;
fi
mkdir ~/makeTest
cd ~/makeTest || exit
mkdir bin
echo "#!/bin/bash
echo Hello world!" > bin/install.sh
chmod +x bin/install.sh

echo ".PHONY: install install2

export PATH := \$(HOME)/makeTest/bin:\$(PATH)

install:
	@which install.sh
	@\$(MAKE) install2
	
install2:
	@install.sh" > Makefile

make install

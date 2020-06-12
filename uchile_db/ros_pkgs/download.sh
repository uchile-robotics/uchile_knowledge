#!/bin/sh
##ALL
#https://mega.nz/#F!ntcDTKyT!spl1WcI562tCAToMWUp4sg

#!/bin/bash

# Download bender_arm_planning
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1hZqcysm9BIaoonL8uy8_UptMmxdg03Qa' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1hZqcysm9BIaoonL8uy8_UptMmxdg03Qa" -O bender_arm_planning.tar.gz && rm -rf /tmp/cookies.txt

# Download bender_description
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1yV7pFwRLPtkPnKqR5rkvcYgd4Iabi9f-' -O bender_description.tar.gz

# Download uchile_fun
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1bW1yWd2icW5kl3m6vYYsfd2mvpommNS7' -O uchile_fun.tar.gz

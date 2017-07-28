#!/bin/bash
#
pwd
chmod 777 /usr/local/bin
cd /usr/local/bin
awk '/### Logstash/ && c == 0 {c = 1; system("cat scriptstoinsert.txt") }; {print} ' /usr/local/bin/start.sh > tmp
mv tmp /usr/local/bin/start.sh
chmod 777 /usr/local/bin/start.sh
cd /

#!/bin/bash

for i in testlak

do
date
echo "processing -  $i"

echo "upgrading"
/usr/local/sbin/kuserenv $i '/home/lfl/up602.sh';

done

echo "done with all"

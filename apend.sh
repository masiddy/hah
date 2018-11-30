#!/bin/sh

timestamp=$(date +%Y.%m.%d.%H.%M)
mkdir ${timestamp}
cd /root/backup/${timestamp}
cp -r /var/lib/jenkins/workspace/ /root/backup/${timestamp}/

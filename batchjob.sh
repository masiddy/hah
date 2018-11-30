!#/usr/bin/python
cd /root/backup/
date | xargs mkdir
#mkdir /root/backup

cp -r /var/lib/jenkins/workspace/  /root/backup/$date

#!/bin/bash
#

sudo cp -r /var/lib/jenkins/ /home/ec2-user/jenkins-backup

cd /home/ec2-user/jenkins-backup

cd ../

chown -R ec2-user jenkins-backup

cd jenkins-backup

git add .

git commit -m " auto commit $(date) "

git push https://$1@github.com/Pavan-D4/jenkins-backup.git master

#!/bin/bash

rsync -a --delete /home/iigrishin /tmp/backup
if [ $? -eq 0 ]
then
  echo "Successfully created backup" >> /var/log/syslog
else
  echo "Could not create backup" >> /var/log/syslog
fi
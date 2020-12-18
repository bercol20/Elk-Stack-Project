#!/bin/bash
sudo mkdir -p /var/backup
sudo tar cvf /var/backup/home.tar /home
mv /var/backup/home.tar /var/backup/home.10082020.tar
tar cvf /var/backup/system.tar /home
ls -lh /var/backup > /var/backup/file_report.txt
less /proc/meminfo | grep MemFree > /var/backup/disk_report.txt


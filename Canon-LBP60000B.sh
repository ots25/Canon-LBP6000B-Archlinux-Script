#! /bin/bash
echo 
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket
sudo systemctl enable --now cups.path
sudo systemctl restart cups.service
sudo /usr/sbin/lpadmin -p LBP6000B -P /usr/share/cups/model/CNCUPSLBP6018CAPTK.ppd -v ccp://localhost:59687 -E
sudo /usr/sbin/ccpdadmin -p LBP6000B -o /dev/usb/lp0
sudo systemctl enable ccpd.service 
echo done.

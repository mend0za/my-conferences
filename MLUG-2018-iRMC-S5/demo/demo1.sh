#!/bin/sh


ipmitool -U admin -P admin -H 10.172.181.138 -I lanplus $@
#user list #sel list #sensor 



#!/bin/sh

while true
do
  sleep $INTERVAL
  ipmitool -I lanplus -U $BMC_USER -P $BMC_PASSWORD -H $BMC_IPADDRESS $IPMI_CMD
done
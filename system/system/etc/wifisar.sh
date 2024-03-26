#!/bin/sh

SARINFO=$(getprop persist.radio.wifi_sar_info)
SARINDEX=${SARINFO:6}
WLAN_INGERFACE=${SARINFO:0:5}

cd /system/bin/

if [[ $SARINDEX = 2 ]]; then
    ./vendor_cmd_tool -f /vendor/etc/wifi/sar-vendor-cmd.xml -i wlan0 --START_CMD --SAR_SET --ENABLE 2 --NUM_SPECS 0 --END_CMD
elif [[ $SARINDEX = 3 ]]; then
    ./vendor_cmd_tool -f /vendor/etc/wifi/sar-vendor-cmd.xml -i wlan0 --START_CMD --SAR_SET --ENABLE 3 --NUM_SPECS 0 --END_CMD
elif [[ $SARINDEX = 4 ]]; then
    ./vendor_cmd_tool -f /vendor/etc/wifi/sar-vendor-cmd.xml -i $WLAN_INGERFACE --START_CMD --SAR_SET --ENABLE 4 --NUM_SPECS 0 --END_CMD
elif [[ $SARINDEX = 5 ]]; then
    ./vendor_cmd_tool -f /vendor/etc/wifi/sar-vendor-cmd.xml -i wlan0 --START_CMD --SAR_SET --ENABLE 5 --NUM_SPECS 0 --END_CMD
elif [[ $SARINDEX = 6 ]]; then
    ./vendor_cmd_tool -f /vendor/etc/wifi/sar-vendor-cmd.xml -i wlan0 --START_CMD --SAR_SET --ENABLE 6 --NUM_SPECS 0 --END_CMD
fi

#echo '********************************************'
#echo SARINDEX is $SARINDEX
#echo SARINFO is $SARINFO
#echo WLAN_INGERFACE is $WLAN_INGERFACE
#echo SARINDEX is $SARINDEX

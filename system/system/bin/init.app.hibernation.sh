#!/system/bin/sh
echo "hibernation begin"
/system/bin/device_config put app_hibernation app_hibernation_targets_pre_s_apps true default
/system/bin/device_config put app_hibernation app_hibernation_enabled true default
value1=$(getprop ro.revoke.threshold.millis)
value2=$(getprop ro.revoke.frequency.millis)
echo $value1
echo $value2
/system/bin/device_config put permissions auto_revoke_unused_threshold_millis2 $value1 default
/system/bin/device_config put permissions auto_revoke_check_frequency_millis $value2 default
echo "hibernation end"

chown -h root.oem_2902 /sys/devices/platform/soc/8048000.tmc/coresight-tmc-etr/block_size
chmod 660 /sys/devices/platform/soc/8048000.tmc/coresight-tmc-etr/block_size
chown -h root.oem_2902 /sys/devices/platform/soc/8048000.tmc/coresight-tmc-etr/buffer_size
chmod 660 /sys/devices/platform/soc/8048000.tmc/coresight-tmc-etr/buffer_size
echo "0x2000000" > /sys/bus/coresight/devices/coresight-tmc-etr/buffer_size
echo 1 > /sys/bus/coresight/devices/coresight-tmc-etr/enable_sink
echo 1 > /sys/bus/coresight/devices/coresight-stm/enable_source
echo 0 > /sys/bus/coresight/devices/coresight-stm/hwevent_enable

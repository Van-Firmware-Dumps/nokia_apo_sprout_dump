#!/vendor/bin/sh

umask 022
export PS4='+{$LINENO:${FUNCNAME[0]}} '
set -x

log -p i -t egiscopy "egis_image_db start"

log -p i -t egiscopy "egis_image_db 1"

#mkdir -p /sdcard/egis_image_db/

mkdir -p /sdcard/hmdlogs/egis_image_db/
mkdir -p /data/local/hmdlogs/egis_image_db/
mkdir -p /sdcard/Documents/egis_image_db/

fsync /sdcard/hmdlogs/

log -p i -t egiscopy "egis_image_db 2"

cp -rn /data/vendor_de/0/fpdata/egis_image_db /sdcard/hmdlogs/egis_image_db/

#cp -rn /data/vendor_de/0/fpdata/egis_image_db /sdcard/Documents/egis_image_db/

log -p i -t egiscopy $!

cp -rn /data/vendor_de/0/fpdata/egis_image_db/sdk_fp/device_bkg /sdcard/hmdlogs/egis_image_db/

log -p i -t egiscopy $!

for file in `find /data/vendor_de/0/fpdata/egis_image_db/`;do
      #log -p i -t egiscopy "Copying $file /data/local/hmdlogs/egis_image_db/"
      #cp -rn file /data/local/hmdlogs/egis_image_db/
      log -p i -t egiscopy "Copying $file /sdcard/Documents/"
      #cp -rn file /sdcard/Documents/egis_image_db/
      #cp -rn file /sdcard/hmdlogs/egis_image_db/
done


log -p i -t egiscopy $!

log -p i -t egiscopy "egis_image_db !"

fsync /sdcard/hmdlogs/

log -p i -t egiscopy "egis_image_db end"


#!/vendor/bin/sh

umask 022
export PS4='+{$LINENO:${FUNCNAME[0]}} '
set -x

Log(){
    log -p d -t embms $1
}

Log "start hmd embms log"

cp /odm/embms/oem_391_prj_HMDeMBMS6375.pfm /mnt/vendor/persist/data/pfm/licenses/oem_391_prj_HMDeMBMS6375.pfm
chown system:system /mnt/vendor/persist/data/pfm/licenses/oem_391_prj_HMDeMBMS6375.pfm

fsync /odm/embms/

Log "end hmd embms log, exit scripty"

export PS4='+{$LINENO:${FUNCNAME[0]}} '
set +x


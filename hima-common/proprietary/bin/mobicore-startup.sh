#!/system/bin/sh

# load kernel modules
insmod /system/lib/modules/mcDrvModule.ko
insmod /system/lib/modules/mcKernelApi.ko

# set device node permissions for TLC apps
chmod 0600 /dev/mobicore
chown system system /dev/mobicore
chmod 0666 /dev/mobicore-user
chown system system /dev/mobicore-user

# Startup script for MobiCore processes #
/system/bin/mcStarter

# run daemon in background
/system/bin/mcDriverDaemon -b

#!/system/bin/sh

target=`getprop ro.board.platform`
case "$target" in
    "msm8994")
        setprop  sys.sysctl.extra_free_kbytes 58500
        echo "0,2,3,7,9,15" > /sys/module/lowmemorykiller/parameters/adj
        echo "27648,41472,48384,72378,84375,121875" > /sys/module/lowmemorykiller/parameters/minfree
        ;;
esac

case "$target" in
    "msm8952")
        echo 1 > /sys/module/lowmemorykiller/parameters/enable_adaptive_lmk
        echo 146575 > /sys/module/lowmemorykiller/parameters/vmpressure_file_min
        setprop  sys.sysctl.extra_free_kbytes 72900
        echo "0,2,3,7,9,15" > /sys/module/lowmemorykiller/parameters/adj
        echo "27648,41472,48384,59578,71575,109075" > /sys/module/lowmemorykiller/parameters/minfree
        ;;
esac

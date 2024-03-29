#!bin/sh

WPI_USB_EN_STATUS=`cat /sys/kernel/debug/gpio | grep wpi_usb_en | awk 'NR==1 {print $6}'`
CUR_ROLE=`cat /sys/kernel/debug/usb/ci_hdrc.1/role`

if [ $WPI_USB_EN_STATUS == "hi" ]; then
        if [ ! $CUR_ROLE == "host" ]; then
                echo "host" > /sys/kernel/debug/usb/ci_hdrc.1/role
                echo "WPI set USB EN 1"
        fi
else
        if [ ! $CUR_ROLE == "gadget" ]; then
                echo "gadget" > /sys/kernel/debug/usb/ci_hdrc.1/role
                echo "WPI set USB EN 0"
        fi
fi

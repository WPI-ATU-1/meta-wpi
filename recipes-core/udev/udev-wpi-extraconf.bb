DESCRIPTION = "WPI ATU WiFi Config"
LICENSE = "CLOSED"

# WPI op-gyro extra configuration udev rules
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
		file://wpi_usb_en.sh \
		file://modprobe_moal.conf \
		file://modules_load_moal.conf "

do_install:prepend () {

    if [ -e "${WORKDIR}/wpi_usb_en.sh" ]; then
        install -d ${D}${sysconfdir}/udev/scripts/
        install -m 0755 ${WORKDIR}/wpi_usb_en.sh ${D}${sysconfdir}/udev/scripts
    fi

    if [ -e "${WORKDIR}/modprobe_moal.conf" ]; then
        install -d ${D}${sysconfdir}/modprobe.d
        install -m 0644 ${WORKDIR}/modprobe_moal.conf ${D}${sysconfdir}/modprobe.d/moal.conf
    fi

    if [ -e "${WORKDIR}/modules_load_moal.conf" ]; then
        install -d ${D}${sysconfdir}/modules-load.d
        install -m 0644 ${WORKDIR}/modules_load_moal.conf ${D}${sysconfdir}//modules-load.d/moal.conf
    fi

}


FILES:${PN}:append = " \
		${sysconfdir}/modprobe.d \
		${sysconfdir}/modules-load.d "

PACKAGE_ARCH = "${MACHINE_ARCH}"

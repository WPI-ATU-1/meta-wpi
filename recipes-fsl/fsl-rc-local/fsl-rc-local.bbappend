FILESEXTRAPATHS:append:opgyro := "${THISDIR}/files"

SRC_URI:append = " \
    file://wpi_usb_en.sh \
"

do_install:append () {
    if [ -e "${WORKDIR}/wpi_usb_en.sh" ]; then
        install -d ${D}/opt/wpi
        install -m 0755 ${WORKDIR}/wpi_usb_en.sh ${D}/opt/wpi/wpi_usb_en.sh
    fi

    sed '/exit 0/i bash \/opt\/wpi\/wpi_usb_en.sh' ${S}/rc.local.etc > ${D}/${sysconfdir}/rc.local
}

FILES:${PN}:append = "/opt \
    /opt/wpi \
    /opt/wpi/* \
"

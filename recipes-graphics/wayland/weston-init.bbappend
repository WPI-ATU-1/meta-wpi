FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://wpi-bg.jpg \
"

do_install:append() {
    if [ -f "${WORKDIR}/wpi-bg.jpg" ]; then
        install -m 0755 ${WORKDIR}/wpi-bg.jpg ${D}${sysconfdir}/xdg/weston/
    fi

    sed -i -e "/^\[shell\]/a background-type=scale-crop" ${D}${sysconfdir}/xdg/weston/weston.ini
    sed -i -e "/^\[shell\]/a background-image=${sysconfdir}/xdg/weston/wpi-bg.jpg" ${D}${sysconfdir}/xdg/weston/weston.ini
}

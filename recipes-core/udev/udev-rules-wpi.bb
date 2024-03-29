DESCRIPTION = "udev rules for WPI i.MX SOCs"
LICENSE = "CLOSED"

SRC_URI = " file://11-wpi.rules"

S = "${WORKDIR}"

do_install () {
	install -d ${D}${sysconfdir}/udev/rules.d
	install -m 0644 ${WORKDIR}/11-wpi.rules ${D}${sysconfdir}/udev/rules.d/
}

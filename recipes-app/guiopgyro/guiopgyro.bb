DESCRIPTION = "WPI ATU GUI-Guider Test Progrem"
LICENSE = "CLOSED"

FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://guiopgyro.tar.gz;md5sum=0d54ea4fe4f1652e26adf6bc90acae37"

S = "${WORKDIR}/guiopgyro"

do_install:append () {
	install -d -m 0755 ${D}/usr/share/guiopgyro
	install -m 0755 ${S}/Audio_sgtl5000.WAV ${D}/usr/share/guiopgyro
	install -m 0755 ${S}/Audio_MQS.WAV ${D}/usr/share/guiopgyro
	install -m 0755 ${S}/output_gyro ${D}/usr/share/guiopgyro
	install -m 0755 ${S}/gui_guider ${D}/usr/share/guiopgyro
	install -m 0755 ${S}/op-gyro.dtb ${D}/usr/share/guiopgyro
}

RPROVIDES:${PN} += " libxkbcommon.so.0(V_0.5.0)(64bit) libwayland-client.so.0()(64bit) libwayland-cursor.so.0()(64bit) libxkbcommon.so.0()(64bit)"
RDEPENDS:${PN} += " libxkbcommon.so.0(V_0.5.0)(64bit) libwayland-client.so.0()(64bit) libwayland-cursor.so.0()(64bit) libxkbcommon.so.0()(64bit)"

FILES:${PN} += "/usr/share/guiopgyro/*"

PACKAGE_ARCH = "${MACHINE_ARCH}"

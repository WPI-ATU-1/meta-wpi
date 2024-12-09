FILESEXTRAPATHS:prepend:opgyro := "${THISDIR}/${PN}/opgyro:"

SRC_URI:append:opgyro = " \
        file://0001-WPI-OP-Gyro-L6.6.23-2.0.0-update.patch \
"

FILESEXTRAPATHS:prepend:opgyro := "${THISDIR}/${PN}/opgyro:"

SRC_URI:append:opgyro = " \
        file://0001-WPI-OP-Gyro-First-commit.patch \
"

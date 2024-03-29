FILESEXTRAPATHS:prepend:opgyro := "${THISDIR}/${PN}/opgyro:"

SRC_URI:append:opgyro = " \
	file://0001-WPI-OP-Gyro-First-commit.patch \
"

DELTA_KERNEL_DEFCONFIG:append:opgyro = " \
        enable_IMX_TPM.cfg \
        enable_USB_SERIAL_PL2303.cfg \
        enable_DRM_PANEL_ILITEK_ILI9881C.cfg \
        enable_LTE.cfg \
	enable_Sgtl5000_I2C.cfg \
	enable_RTC_DRV_RS5C372.cfg \
	disable_MXC_CAMERA_OV5640_MIPI_V2.cfg \
"

FILESEXTRAPATHS:prepend:opgyro := "${THISDIR}/${PN}/opgyro:"

SRC_URI:append:opgyro = " \
	file://0001-WPI-OP-Gyro-mickledore-to-scarthgap-Kernel-Patch.patch \
	file://0002-WPI-OP-Gyro-Force-set-USB-Port0-host-mode-and-remove.patch \
	file://enable_IMX_TPM.cfg \
	file://enable_USB_SERIAL_PL2303.cfg \
	file://enable_DRM_PANEL_ILITEK_ILI9881C.cfg \
	file://enable_LTE.cfg \
	file://enable_Sgtl5000_I2C.cfg \
	file://enable_RTC_DRV_RS5C372.cfg \
	file://disable_MXC_CAMERA_OV5640_MIPI_V2.cfg \
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

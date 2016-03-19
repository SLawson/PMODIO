

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "PMODIO" "NUM_INSTANCES" "DEVICE_ID"  "C_PMODIO_BASEADDR" "C_PMODIO_HIGHADDR"
}

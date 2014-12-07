***
*** proprietary for rk30board
***

  These proprietary files are derived from Android4.2/Linux3.0.8 on rk30board.

***
*** comment for modified files
***

  ./root/init.rk30board.rc:
	added execution of 'insmod' drivers.

  ./lib/hw/alsa.default.so_modified:
	modified to avoid error on new API of libutils.so.
	  CallStack::dump() -> CallStack::Dump()

	# need to patch frameworks/native/libs/utils.


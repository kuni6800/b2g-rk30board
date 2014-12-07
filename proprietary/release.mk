$(call inherit-product, .config)

DEVDIR=device/rockchip/rk30board
ROOTDIR= $(DEVDIR)/proprietary/root
SYSDIR=  $(DEVDIR)/proprietary/system
PATCHDIR=$(DEVDIR)/proprietary/patched

PRODUCT_COPY_FILES += \
	$(ROOTDIR)/init.rk30board.rc:root/init.rk30board.rc \
	$(ROOTDIR)/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
	$(ROOTDIR)/ueventd.rk30board.rc:root/ueventd.rk30board.rc

PRODUCT_COPY_FILES += \
	$(SYSDIR)/lib/hw/acoustics.default.so:system/lib/hw/acoustics.default.so \
	$(PATCHDIR)/alsa.default.so_modified:system/lib/hw/alsa.default.so \
	$(SYSDIR)/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so \
	$(SYSDIR)/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
	$(SYSDIR)/lib/hw/audio.primary.rk30board.so:system/lib/hw/audio.primary.rk30board.so \
	$(SYSDIR)/lib/hw/audio.r_submix.default.so:system/lib/hw/audio.r_submix.default.so \
	$(SYSDIR)/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
	$(SYSDIR)/lib/hw/audio_policy.rk30board.so:system/lib/hw/audio_policy.rk30board.so \
	$(SYSDIR)/lib/hw/bluetooth.default.so:system/lib/hw/bluetooth.default.so \
	$(SYSDIR)/lib/hw/camera.goldfish.so:system/lib/hw/camera.goldfish.so \
	$(SYSDIR)/lib/hw/camera.rk30board.so:system/lib/hw/camera.rk30board.so \
	$(SYSDIR)/lib/hw/gps.goldfish.so:system/lib/hw/gps.goldfish.so \
	$(SYSDIR)/lib/hw/gpu.rk30board.so:system/lib/hw/gpu.rk30board.so \
	$(SYSDIR)/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
	$(SYSDIR)/lib/hw/gralloc.rk30board.so:system/lib/hw/gralloc.rk30board.so \
	$(SYSDIR)/lib/hw/hwcomposer.rk30board.so:system/lib/hw/hwcomposer.rk30board.so \
	$(SYSDIR)/lib/hw/keystore.default.so:system/lib/hw/keystore.default.so \
	$(SYSDIR)/lib/hw/lights.goldfish.so:system/lib/hw/lights.goldfish.so \
	$(SYSDIR)/lib/hw/lights.rk30board.so:system/lib/hw/lights.rk30board.so \
	$(SYSDIR)/lib/hw/local_time.default.so:system/lib/hw/local_time.default.so \
	$(SYSDIR)/lib/hw/power.default.so:system/lib/hw/power.default.so \
	$(SYSDIR)/lib/hw/power.rk30xx.so:system/lib/hw/power.rk30xx.so \
	$(SYSDIR)/lib/hw/sensors.goldfish.so:system/lib/hw/sensors.goldfish.so \
	$(SYSDIR)/lib/hw/sensors.rk30board.so:system/lib/hw/sensors.rk30board.so

PRODUCT_COPY_FILES += \
	$(SYSDIR)/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	$(SYSDIR)/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	$(SYSDIR)/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so

PRODUCT_COPY_FILES += \
	$(SYSDIR)/lib/libMali.so:system/lib/libMali.so \
	$(SYSDIR)/lib/libUMP.so:system/lib/libUMP.so \
	$(SYSDIR)/lib/libasound.so:system/lib/libasound.so \
	$(SYSDIR)/lib/libhwui.so:system/lib/libhwui.so \
	$(SYSDIR)/lib/libion.so:system/lib/libion.so \
	$(SYSDIR)/lib/libjpeghwdec.so:system/lib/libjpeghwdec.so \
	$(SYSDIR)/lib/libjpeghwenc.so:system/lib/libjpeghwenc.so \
	$(SYSDIR)/lib/librkswscale.so:system/lib/librkswscale.so \
	$(SYSDIR)/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
	$(SYSDIR)/lib/libvpu.so:system/lib/libvpu.so \
	$(SYSDIR)/lib/libkeystore_client.so:system/lib/libkeystore_client.so \
	$(SYSDIR)/lib/libbt-utils.so:system/lib/libbt-utils.so \
	$(SYSDIR)/lib/libbt-hci.so:system/lib/libbt-hci.so \
	$(SYSDIR)/lib/libomxvpu.so:system/lib/libomxvpu.so \
	$(SYSDIR)/lib/libomxvpu_enc.so:system/lib/libomxvpu_enc.so \
	$(SYSDIR)/lib/librk_on2.so:system/lib/librk_on2.so \
	$(SYSDIR)/lib/librkffplayer.so:system/lib/librkffplayer.so \
	$(SYSDIR)/lib/librkwmapro.so:system/lib/librkwmapro.so

PRODUCT_COPY_FILES += \
	$(SYSDIR)/lib/modules/ump.ko:system/lib/modules/ump.ko \
	$(SYSDIR)/lib/modules/mali.ko:system/lib/modules/mali.ko \
	$(SYSDIR)/lib/modules/vpu_service.ko:system/lib/modules/vpu_service.ko \
	$(SYSDIR)/lib/modules/rk30_mirroring.ko.3.0.8+:system/lib/modules/rk30_mirroring.ko \
	$(SYSDIR)/lib/modules/rk29-ipp.ko:system/lib/modules/rk29-ipp.ko \
	$(SYSDIR)/lib/modules/rkwifi.ko.3.0.8+:system/lib/modules/rkwifi.ko \
	$(SYSDIR)/lib/modules/wlan.ko.3.0.8+:system/lib/modules/wlan.ko

PRODUCT_COPY_FILES += \
	$(SYSDIR)/etc/audio_policy.conf:system/etc/audio_policy.conf \
	$(SYSDIR)/etc/audio_effects.conf:system/etc/audio_effects.conf \
	$(SYSDIR)/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(SYSDIR)/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(SYSDIR)/etc/vold.fstab:system/etc/vold.fstab \
	$(SYSDIR)/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
	$(SYSDIR)/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
	$(SYSDIR)/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
	$(SYSDIR)/usr/share/alsa/init/00main:system/usr/share/alsa/init/00main \
	$(SYSDIR)/usr/share/alsa/init/default:system/usr/share/alsa/init/default \
	$(SYSDIR)/usr/share/alsa/init/hda:system/usr/share/alsa/init/hda \
	$(SYSDIR)/usr/share/alsa/init/help:system/usr/share/alsa/init/help \
	$(SYSDIR)/usr/share/alsa/init/info:system/usr/share/alsa/init/info \
	$(SYSDIR)/usr/share/alsa/init/test:system/usr/share/alsa/init/test \
	$(SYSDIR)/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
	$(SYSDIR)/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
	$(SYSDIR)/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
	$(SYSDIR)/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
	$(SYSDIR)/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
	$(SYSDIR)/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
	$(SYSDIR)/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
	$(SYSDIR)/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
	$(SYSDIR)/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
	$(SYSDIR)/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
	$(SYSDIR)/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
	$(SYSDIR)/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
	$(SYSDIR)/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
	$(SYSDIR)/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
	$(SYSDIR)/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

PRODUCT_COPY_FILES += \
	$(SYSDIR)/etc/firmware/fw_RK901.bin:system/etc/firmware/fw_RK901.bin \
	$(SYSDIR)/etc/firmware/fw_RK901a0.bin:system/etc/firmware/fw_RK901a0.bin \
	$(SYSDIR)/etc/firmware/fw_RK901a0_apsta.bin:system/etc/firmware/fw_RK901a0_apsta.bin \
	$(SYSDIR)/etc/firmware/fw_RK901a2.bin:system/etc/firmware/fw_RK901a2.bin \
	$(SYSDIR)/etc/firmware/fw_RK901a2_apsta.bin:system/etc/firmware/fw_RK901a2_apsta.bin \
	$(SYSDIR)/etc/firmware/fw_RK901a2_p2p.bin:system/etc/firmware/fw_RK901a2_p2p.bin \
	$(SYSDIR)/etc/firmware/fw_RK903.bin:system/etc/firmware/fw_RK903.bin \
	$(SYSDIR)/etc/firmware/fw_RK903_ag.bin:system/etc/firmware/fw_RK903_ag.bin \
	$(SYSDIR)/etc/firmware/fw_RK903_ag_apsta.bin:system/etc/firmware/fw_RK903_ag_apsta.bin \
	$(SYSDIR)/etc/firmware/fw_RK903_ag_p2p.bin:system/etc/firmware/fw_RK903_ag_p2p.bin \
	$(SYSDIR)/etc/firmware/fw_RK903_p2p.bin:system/etc/firmware/fw_RK903_p2p.bin \
	$(SYSDIR)/etc/firmware/fw_RK903b2.bin:system/etc/firmware/fw_RK903b2.bin \
	$(SYSDIR)/etc/firmware/fw_RK903b2_apsta.bin:system/etc/firmware/fw_RK903b2_apsta.bin \
	$(SYSDIR)/etc/firmware/fw_RK903b2_p2p.bin:system/etc/firmware/fw_RK903b2_p2p.bin \
	$(SYSDIR)/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
	$(SYSDIR)/etc/firmware/nvram_RK901.txt:system/etc/firmware/nvram_RK901.txt \
	$(SYSDIR)/etc/firmware/nvram_RK903.cal:system/etc/firmware/nvram_RK903.cal \
	$(SYSDIR)/etc/firmware/nvram_RK903.txt:system/etc/firmware/nvram_RK903.txt \
	$(SYSDIR)/etc/firmware/nvram_RK903_26M.cal:system/etc/firmware/nvram_RK903_26M.cal

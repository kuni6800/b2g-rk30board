$(call inherit-product, .config)
DEV := $(subst local-,,$(DEVICE_NAME))

$(call inherit-product-if-exists, device/rockchip/rk30board/proprietary/$(DEV)/release.mk)

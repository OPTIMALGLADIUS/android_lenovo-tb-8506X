# Replace ${_CODENAME_} with your Device CodeName's Value. Mine is Primo_RX5.
# Replace ${_VENDORNAME_} with your Brand/Vendor/Manufacturer's Value, Mine is WALTON 

ifneq ($(filter tb8768tp1_64_bsp,$(TARGET_DEVICE)),)
LOCAL_PATH := device/Lenovo/TB-8506X
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

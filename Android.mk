ifeq ($(TARGET_QCOM_AUDIO_VARIANT),legacy)

AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),msm7x27a)
    include $(AUDIO_HW_ROOT)/msm7627a/Android.mk
endif
ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
    include $(AUDIO_HW_ROOT)/msm7x30/Android.mk
endif
ifeq ($(TARGET_BOARD_PLATFORM),msm8660)
    include $(AUDIO_HW_ROOT)/msm8660/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
endif
ifeq ($(TARGET_BOARD_PLATFORM),msm8960)
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
endif
ifeq ($(TARGET_BOARD_PLATFORM),qsd8k)
    include $(AUDIO_HW_ROOT)/qsd8k/Android.mk
endif

endif


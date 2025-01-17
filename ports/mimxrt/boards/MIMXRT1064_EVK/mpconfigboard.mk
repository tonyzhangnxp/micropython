MCU_SERIES = MIMXRT1064
MCU_VARIANT = MIMXRT1064DVL6A

MICROPY_FLOAT_IMPL = double
MICROPY_HW_ENABLE_CAN = 1
MICROPY_HW_FLASH_TYPE = internal
MICROPY_HW_FLASH_SIZE = 0x400000  # 4MB

MICROPY_HW_SDRAM_AVAIL = 1
MICROPY_HW_SDRAM_SIZE  = 0x2000000  # 32MB

MICROPY_PY_LWIP = 1
MICROPY_PY_SSL = 1
MICROPY_SSL_MBEDTLS = 1

CFLAGS += -DMICROPY_PY_THREAD=1

FROZEN_MANIFEST ?= $(BOARD_DIR)/manifest.py

JLINK_PATH ?= /media/RT1064-EVK/

deploy: $(BUILD)/firmware.bin
	cp $< $(JLINK_PATH)

CFLAGS += -DMICROPY_PY_PYB=1

CFLAGS += -DMICROPY_HW_ENABLE_CAN=1
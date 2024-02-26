MCU_SERIES = MIMXRT1052
MCU_VARIANT = MIMXRT1052DVL6B

MICROPY_FLOAT_IMPL = double
MICROPY_HW_ENABLE_CAN = 1
MICROPY_HW_FLASH_TYPE = qspi_hyper_flash
MICROPY_HW_FLASH_SIZE = 0x4000000  # 64MB

MICROPY_HW_SDRAM_AVAIL = 1
MICROPY_HW_SDRAM_SIZE  = 0x2000000  # 32MB

MICROPY_PY_LWIP = 1
MICROPY_PY_SSL = 1
MICROPY_SSL_MBEDTLS = 1

FROZEN_MANIFEST ?= $(BOARD_DIR)/manifest.py

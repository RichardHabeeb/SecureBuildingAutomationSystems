TARGETS := alarm.bin

CFILES   := $(patsubst $(SOURCE_DIR)/%,%,$(wildcard $(SOURCE_DIR)/src/*.c))
CFILES   += $(patsubst $(SOURCE_DIR)/%,%,$(wildcard $(SOURCE_DIR)/crt/arch-${ARCH}/*.c))
INCLUDE_DIRS  += $(SOURCE_DIR)/src


LIBS := muslc sel4 sos platsupport

include $(SEL4_COMMON)/common.mk

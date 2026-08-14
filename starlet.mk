ifeq ($(strip $(DEVKITARM)),)
$(error "Set DEVKITARM in your environment.")
endif

PREFIX = $(DEVKITARM)/bin/arm-none-eabi-

CFLAGS = -mbig-endian -mcpu=arm926ej-s -mthumb-interwork -fno-builtin -ffreestanding
CFLAGS += -fomit-frame-pointer -ffunction-sections
# ugh
CFLAGS += -Wall -Wextra -Os -pipe -I . -isystem . -std=gnu90
ASFLAGS =
LDFLAGS = -mbig-endian -n -nostartfiles -nodefaultlibs -Wl,-gc-sections


libc_openbsd_src_files_exclude_arm += \
    upstream-openbsd/lib/libc/string/memmove.c \
    upstream-openbsd/lib/libc/string/stpcpy.c \
    upstream-openbsd/lib/libc/string/stpcpy.c \
    upstream-openbsd/lib/libc/string/strcat.c \

libc_bionic_src_files_exclude_arm += \
    arch-arm/generic/bionic/memcpy.S \
    arch-arm/generic/bionic/memset.S \
    arch-arm/generic/bionic/strcmp.S \
    arch-arm/generic/bionic/strcpy.S \
    arch-arm/generic/bionic/strlen.c \
    bionic/__strcat_chk.cpp \
    bionic/__strcpy_chk.cpp \

libc_bionic_src_files_arm += \
    arch-arm/krait/bionic/memset.S \
    arch-arm/krait/bionic/__strcat_chk.S \
    arch-arm/krait/bionic/__strcpy_chk.S \

#For some targets we don't need this optimization
ifeq ($(TARGET_CPU_MEMCPY_BASE_OPT_DISABLE),true)
libc_bionic_src_files_arm += \
    arch-arm/cortex-a15/bionic/memcpy.S
else
libc_bionic_src_files_arm += \
    arch-arm/krait/bionic/memcpy.S
endif

# Use cortex-a15 versions of strcat/strcpy/strlen and standard memmove
libc_bionic_src_files_arm += \
    arch-arm/cortex-a15/bionic/stpcpy.S \
    arch-arm/cortex-a15/bionic/strcat.S \
    arch-arm/cortex-a15/bionic/strcmp.S \
    arch-arm/cortex-a15/bionic/strcpy.S \
    arch-arm/cortex-a15/bionic/strlen.S \

libc_bionic_src_files_arm += \
    arch-arm/denver/bionic/memmove.S \

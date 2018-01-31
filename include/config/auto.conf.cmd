deps_config := \
	/home/mint/seL4/dhs-demo-feb-2018/tools/common/Kconfig \
	tools/elfloader/Kconfig \
	apps/temp_control/Kconfig \
	apps/web/Kconfig \
	apps/proxy/Kconfig \
	apps/sosh/Kconfig \
	apps/sos/Kconfig \
	libs/libsel4sync/Kconfig \
	libs/libsos/Kconfig \
	libs/libplatsupport/Kconfig \
	libs/libutils/Kconfig \
	libs/libethdrivers/Kconfig \
	libs/libcpio/Kconfig \
	libs/libelf/Kconfig \
	libs/libclock/Kconfig \
	libs/libnfs/Kconfig \
	libs/libserial/Kconfig \
	libs/liblwip/Kconfig \
	libs/libsel4cspace/Kconfig \
	libs/libsel4/Kconfig \
	libs/libmuslc/Kconfig \
	/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/pc99/Kconfig \
	/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/Kconfig \
	kernel/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(KERNEL_ROOT_PATH)" "/home/mint/seL4/dhs-demo-feb-2018/kernel"
include/config/auto.conf: FORCE
endif
ifneq "$(COMMON_PATH)" "/home/mint/seL4/dhs-demo-feb-2018/tools/common"
include/config/auto.conf: FORCE
endif

$(deps_config): ;

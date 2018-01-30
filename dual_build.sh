make controller1_defconfig
make
arm-linux-gnueabi-objcopy --input-format=elf32-littlearm --output-format=binary -R.scratch images/sos-image-arm-imx6  ~/shared/sel4bins/cont1.bin

make controller2_defconfig
make
arm-linux-gnueabi-objcopy --input-format=elf32-littlearm --output-format=binary -R.scratch images/sos-image-arm-imx6  ~/shared/sel4bins/cont2.bin

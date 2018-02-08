make c1_defconfig
make
arm-linux-gnueabi-objcopy --input-format=elf32-littlearm --output-format=binary -R.scratch images/sos-image-arm-imx6  ~/shared/sel4bins/c1.bin

make c2_defconfig
make
arm-linux-gnueabi-objcopy --input-format=elf32-littlearm --output-format=binary -R.scratch images/sos-image-arm-imx6  ~/shared/sel4bins/c2.bin

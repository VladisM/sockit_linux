# nastavení potřebných proměnných
export DISK=/dev/mmcblk0	# sem se bude instalovat
export NUMBER_OF_CORES=4	# upravit počet jader procesoru na kterém se překládá (zrychlí překlad kernelu)

# vytvoření a vstoupení do složky pro stahování
mkdir download

# stáhne zdrojové kódy linuxu, zavaděče u-boot a rootfs
wget -c -P ./download https://releases.linaro.org/components/toolchain/binaries/5.3-2016.02/arm-linux-gnueabihf/gcc-linaro-5.3-2016.02-x86_64_arm-linux-gnueabihf.tar.xz 
wget -c -P ./download https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.5.tar.xz
wget -c -P ./download ftp://ftp.denx.de/pub/u-boot/u-boot-2016.03.tar.bz2
wget -c -P ./download https://rcn-ee.com/rootfs/eewiki/minfs/debian-8.3-minimal-armhf-2016-01-25.tar.xz

# rozbalí stažené soubory
tar xf ./download/gcc-linaro-5.3-2016.02-x86_64_arm-linux-gnueabihf.tar.xz
tar -xJf ./download/linux-4.5.tar.xz 
tar xf ./download/debian-8.3-minimal-armhf-2016-01-25.tar.xz
tar xf ./download/u-boot-2016.03.tar.bz2

# přejmenuje některé složky pro větší přehlednost
mv gcc-linaro-5.3-2016.02-x86_64_arm-linux-gnueabihf toolchain
mv debian-8.3-minimal-armhf-2016-01-25 debian-8.3-minimal
mv u-boot-2016.03 u-boot
mv linux-4.5 linux

# připraví toolchain
export CC=`pwd`/toolchain/bin/arm-linux-gnueabihf-

# kompilace zavaděče
cd ./u-boot/
make mrproper
make CROSS_COMPILE=${CC} socfpga_sockit_defconfig
make CROSS_COMPILE=${CC} 

# návrat zpátky
cd ..

# kompilace linuxového jádra
cd ./linux/
make clean
make mrproper
make CROSS_COMPILE=${CC} ARCH=arm socfpga_defconfig
make CROSS_COMPILE=${CC} ARCH=arm -j${NUMBER_OF_CORES} zImage
make CROSS_COMPILE=${CC} ARCH=arm -j${NUMBER_OF_CORES} dtbs
make CROSS_COMPILE=${CC} ARCH=arm -j${NUMBER_OF_CORES} modules

# návrat zpátky
cd ..

# příprava paměťové karty - pozor na správné nastavení proměnné DISK - bude smazán
sudo dd if=/dev/zero of=${DISK} bs=1M count=64

# vytvoření oddílů na kartě
sudo sfdisk --unit M ${DISK} <<-__EOF__
2,48,0xE,
50,,,
1,1,0xA2,
__EOF__

# formátování oddílů
sudo mkfs.vfat -F 16 -n BOOT ${DISK}p1
sudo mkfs.ext4 -L rootfs ${DISK}p2

# připojení oddílů
sudo mkdir -p /media/boot/
sudo mkdir -p /media/rootfs/
sudo mount ${DISK}p1 /media/boot/
sudo mount ${DISK}p2 /media/rootfs/

# kopírování zavaděče u-boot
sudo dd if=./u-boot/u-boot-with-spl.sfp of=${DISK}p3

# kopírování rootfs
sudo tar xfvp ./debian-8.3-minimal/armhf-rootfs-debian-jessie.tar -C /media/rootfs/

# kopírování kernelu a dtb
sudo cp linux/arch/arm/boot/zImage /media/boot/zImage
sudo cp linux/arch/arm/boot/dts/socfpga_cyclone5_sockit.dtb /media/boot/socfpga.dtb 

# instalace modulů 
cd ./linux/
sudo make CROSS_COMPILE=${CC} ARCH=arm INSTALL_MOD_PATH=/media/rootfs modules_install

# návrat zpět
cd ..

# kompilace ukázkových programů a jejich nahrání na kartu
cd ./examples/led_test/
make
cp ./led_test /media/rootfs/home/debian/led_test
cd ./../button_test/
make
cp ./button_test /media/rootfs/home/debian/button_test

# nastavení fstab
sudo sh -c "echo '/dev/mmcblk0p2  /  auto  errors=remount-ro  0  1' >> /media/rootfs/etc/fstab"
sudo sh -c "echo '/dev/mmcblk0p1  /boot/uboot  auto  defaults  0  2' >> /media/rootfs/etc/fstab"

# nastavení sítě (eth0 aktivní dhcp)
sudo sh -c "echo 'auto lo' >> /media/rootfs/etc/network/interfaces"
sudo sh -c "echo 'iface lo inet loopback' >> /media/rootfs/etc/network/interfaces"
sudo sh -c "echo 'auto eth0' >> /media/rootfs/etc/network/interfaces"
sudo sh -c "echo 'iface eth0 inet dhcp' >> /media/rootfs/etc/network/interfaces"

# nastavení serial login
sudo sh -c "echo 'start on stopped rc RUNLEVEL=[2345]' >> /media/rootfs/etc/init/serial.conf"
sudo sh -c "echo 'stop on runlevel [!2345]' >> /media/rootfs/etc/init/serial.conf"
sudo sh -c "echo 'respawn' >> /media/rootfs/etc/init/serial.conf"
sudo sh -c "echo 'exec /sbin/getty 115200 ttyS0' >> /media/rootfs/etc/init/serial.conf"

# počkat na zápis dat do karty a odpojit oddíly
sync
sudo umount /media/boot
sudo umount /media/rootfs

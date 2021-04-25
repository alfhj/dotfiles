ln -sf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
hwclock --systohc
sed -i -e 's/^#\(en_US.UTF-8 UTF-8\)/\1/' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=no" > /etc/vconsole.conf
echo "yamato" > /etc/hostname
echo -e "\n127.0.0.1\tlocalhost\n::1\t\tlocalhost\n127.0.1.1\tyamato.localdomain yamato" >> /etc/hosts
efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=PARTUUID=0500c49c-0223-1841-9967-9540aab9bc1a resume=PARTUUID=cf7f9f3a-83ec-2a4b-bccb-7bd4e59c7eea rw initrd=\initramfs-linux.img' --verbose
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
systemctl enable dhcpcd.service
systemctl enable sshd.service
passwd

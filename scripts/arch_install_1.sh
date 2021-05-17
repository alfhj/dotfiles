timedatectl set-ntp true
sleep 5
#fdisk /dev/nvme0n1
#mkfs.vfat -F32 /dev/nvme0n1p1
#mkfs.ext4 /dev/nvme0n1p3
mkswap /dev/nvme0n1p2
mount /dev/nvme0n1p3 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot
swapon /dev/nvme0n1p2
pacstrap /mnt base base-devel linux linux-firmware vim tmux zsh grml-zsh-config openssh man-db efibootmgr dhcpcd ntfs-3g lm_sensors mlocate git vi
genfstab -U /mnt >> /mnt/etc/fstab

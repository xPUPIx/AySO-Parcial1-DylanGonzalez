(
echo n
echo p
echo 1
echo
echo +2.5G

echo n
echo p
echo 2
echo
echo +2.5G

echo n
echo p
echo 3
echo
echo +2.5G

echo n
echo e
echo 4
echo
echo +2.5G

echo n
echo l
echo
echo

echo w
) | fdisk /dev/sdb

mkfs.ext3 /dev/sdb1
mkfs.ext3 /dev/sdb2
mkfs.ext3 /dev/sdb3
mkfs.ext3 /dev/sdb5

mkdir -p /mnt/part1 /mnt/part2 /mnt/part3 /mnt/part4
mount /dev/sdb1 /mnt/part1
mount /dev/sdb2 /mnt/part2
mount /dev/sdb3 /mnt/part3
mount /dev/sdb5 /mnt/part4

lsblk

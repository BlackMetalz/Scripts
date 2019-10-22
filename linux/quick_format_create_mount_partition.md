Copy and paste. Ez game ez life

```
sudo -i
mkfs.ext4 /dev/vdb
UUID=$(blkid | grep /dev/vdb | cut -f 2 -d " " )
mkdir -p /data
echo "$UUID /data ext4 noatime,nodiratime 0 1" >> /etc/fstab
mount -a
df -h
```

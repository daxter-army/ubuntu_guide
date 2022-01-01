# Real time file watching error
### check file watch file limit
```bash
cat /proc/sys/fs/inotify/max_user_watches
```

### change the limit, open file
```bash
sudo nano /etc/sysctl.conf
```

### append this line in the file
```bash
fs.inotify.max_user_watches=1048576
```

### enter this or reboot
```bash
sudo sysctl -p /etc/sysctl.conf
```

# Real time file watching error
* check file watch file limit
	*cat /proc/sys/fs/inotify/max_user_watches*
* change the limit, open file
	*sudo nano /etc/sysctl.conf*
* append this line in the file
	*fs.inotify.max_user_watches=1048576*
* enter this or reboot
	*sudo sysctl -p /etc/sysctl.conf*
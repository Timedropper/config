echo -e '输入1执行备份\n输入2执行恢复'
read key
if [ $key = 1 ];then
	termux-setup-storage
	cd /data/data/com.termux/files
	tar -zcvf /sdcard/termux-backup.tar.gz home usr
elif [ $key = 2 ];then
	termux-setup-storage
	cd /data/data/com.termux/files
	rm -rf home
	tar -zxvf /sdcard/termux-backup.tar.gz home
	cp ./usr/bin/busybox ./tar
	rm -rf usr
	unset LD_PRELOAD
	./tar -zxvf /sdcard/termux-backup.tar.gz usr
	rm tar
fi

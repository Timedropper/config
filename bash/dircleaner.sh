echo '确认清理(y/n)'
read key
if [ $key != 'y' ]
then
	exit
fi
shopt -s extglob
cd /sdcard/
rm -rf !(Android|DCIM|Download|Pictures|MT2)
rm -rf .* > /dev/null
cd ~-
shopt -u extglob


dmitry@dmitry-VirtualBox:~$ cat script.sh
#! /bin/bash

sed -i  '/^$/d' ~/file| sed -i 's/[a-z]/\U&/g' ~/file

dmitry@dmitry-VirtualBox:~$ cat script2.sh
#! /bin/bash

mkdir ~/lesson6
cd  ~/lesson6
for y in {0..7}
do
	mkdir 201$y
	for m in {01..12}
	do
		mkdir ./201$y/$m
		for f in {001..005}
			do 
			echo File $f > ./201$y/$m/$f.txt
		done
	done
done
dmitry@



dmitry@dmitry-VirtualBox:~$ ls -la /etc |grep -v '^total' |awk '{print $1}'|sort|uniq
drwxr-s---
drwxr-xr-x
lrwxrwxrwx
-r--r-----
-r--r--r--
-rw-------
-rw-r-----
-rw-r--r--
-rwx------



dmitry@dmitry-VirtualBox:~$ ./script2.sh
dmitry@dmitry-VirtualBox:~$ ls ./lesson6/2010
01  02  03  04  05  06  07  08  09  10  11  12
dmitry@dmitry-VirtualBox:~$ ls /lesson6
ls: cannot access '/lesson6': No such file or directory
dmitry@dmitry-VirtualBox:~$ ls ./lesson6
2010  2011  2012  2013  2014  2015  2016  2017
dmitry@dmitry-VirtualBox:~$ cat ./lesson6/2010/01/001.txt
File 001


dmitry@dmitry-VirtualBox:~$ cat /var/log/syslog |grep -i starting
Jul 29 17:42:24 dmitry-VirtualBox systemd[1660]: Starting Tracker metadata extractor...
Jul 29 17:43:36 dmitry-VirtualBox systemd[1660]: Starting Tracker metadata database store and lookup manager...
Jul 29 17:43:37 dmitry-VirtualBox systemd[1660]: Starting Tracker metadata extractor...
Jul 29 17:48:48 dmitry-VirtualBox systemd[1660]: Starting Tracker metadata database store and lookup manager...
Jul 29 17:48:49 dmitry-VirtualBox systemd[1660]: Starting Tracker metadata extractor...


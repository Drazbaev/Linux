1) 
dmitry@dmitry-VirtualBox:~$ cat /etc/* 2 > file
dmitry@dmitry-VirtualBox:~$ head file
cat: /etc/acpi: Is a directory
cat: /etc/alsa: Is a directory
cat: /etc/alternatives: Is a directory
cat: /etc/apm: Is a directory
cat: /etc/apparmor: Is a directory
cat: /etc/apparmor.d: Is a directory
cat: /etc/apport: Is a directory
cat: /etc/apt: Is a directory
cat: /etc/avahi: Is a directory
cat: /etc/bash_completion.d: Is a directory

2)
dmitry@dmitry-VirtualBox:~$ cut -d " " -f 1 ls.txt
total
drwxr-xr-x
drwxr-xr-x
-rw-------

dmitry@dmitry-VirtualBox:~$ cut -d " " -f 1 ls.txt | sort
drwx------
drwx------
drwx------
drwx------
drwxr-xr-x
drwxr-xr-x

dmitry@dmitry-VirtualBox:~$ cut -d " " -f 1 ls.txt | sort |uniq
drwx------
drwxr-xr-x
-rw-------
-rw-r--r--
-rw-rw-r--
total

3) 
dmitry@dmitry-VirtualBox:~$ systemctl restart sshd 

dmitry@dmitry-VirtualBox:~$ sudo vim /etc/ssh/sshd_config
dmitry@dmitry-VirtualBox:~$ systemctl restart sshd 
dmitry@dmitry-VirtualBox:~$ sudo vim /etc/ssh/sshd_config
dmitry@dmitry-VirtualBox:~$ systemctl reload sshd 


dmitry@dmitry-VirtualBox:~$ ps aux |grep sshd
root       31327  0.0  0.1  12184  6996 ?        Ss   16:35   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
dmitry     31355  0.0  0.0  17676   740 pts/0    S+   16:40   0:00 grep --color=auto sshd
dmitry@dmitry-VirtualBox:~$ systemctl restart sshd 
dmitry@dmitry-VirtualBox:~$ ps aux |grep sshd
root       31368  0.3  0.1  12184  6936 ?        Ss   16:41   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
dmitry     31371  0.0  0.0  17676   728 pts/0    S+   16:41   0:00 grep --color=auto sshd
dmitry@dmitry-VirtualBox:~$ systemctl reload sshd 
dmitry@dmitry-VirtualBox:~$ ps aux |grep sshd
root       31368  0.1  0.1  12184  6940 ?        Ss   16:41   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
dmitry     31384  0.0  0.0  17676   668 pts/0    S+   16:41   0:00 grep --color=auto sshd

The differrence between restart and reload is that restart changes PID while reload saves it and just updates the configuration of the daemon.

dmitry@dmitry-VirtualBox:~$ cat > file
hello world
dmitry@dmitry-VirtualBox:~$ 

Pressing ctrl+d we passed SIGKILL to the process cat which is an equivalent to kill -9

Sorry for my english, just noticed that there is no russian lang on my linux machine.)
 
 
 4) 
 dmitry@dmitry-VirtualBox:~$ sudo apt-get install mc
dmitry@dmitry-VirtualBox:~$ mc

Ctrl+o

 dmitry@dmitry-VirtualBox:~$ ps aux |grep mc
dmitry      1519  0.0  0.1 171336  7148 ?        Sl   08:05   0:00 /usr/libexec/ibus-memconf
dmitry     31935  0.0  0.2  31124  9696 pts/0    S+   16:47   0:00 mc
dmitry     31955  0.0  0.0  17672   740 pts/1    S+   16:48   0:00 grep --color=auto mc

 dmitry@dmitry-VirtualBox:~$ kill -15 31935Terminated
dmitry@dmitry-VirtualBox:~$ mc

dmitry@dmitry-VirtualBox:~$ ps aux |grep mc
dmitry      1519  0.0  0.1 171336  7148 ?        Sl   08:05   0:00 /usr/libexec/ibus-memconf
dmitry     31959  0.1  0.2  31000  9668 pts/0    S+   16:50   0:00 mc
dmitry     31968  0.0  0.0  17672   664 pts/1    S+   16:50   0:00 grep --color=auto mc

dmitry@dmitry-VirtualBox:~$ kill -9 31959Killed

 
 
 





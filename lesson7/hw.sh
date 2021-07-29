dmitry@dmitry-VirtualBox:~$ cd /etc/apt/sources.list.d
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ ls
docker.list
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo vim docker.list 
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ curl -fsSL http://nginx.org/keys/nginx_signing.key |sudo apt-key add
OK
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo apt update
Get:1 http://nginx.org/packages/ubuntu focal InRelease [2вЂЇ849 B]
Hit:2 http://ru.archive.ubuntu.com/ubuntu focal InRelease                     
Get:3 http://ru.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB] 
Get:4 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
Get:5 http://ru.archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
Get:6 http://nginx.org/packages/ubuntu focal/nginx amd64 Packages [12,4 kB]
Get:7 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [1вЂЇ129 kB]
Get:8 http://ru.archive.ubuntu.com/ubuntu focal-updates/main i386 Packages [514 kB]
Get:9 http://ru.archive.ubuntu.com/ubuntu focal-updates/main Translation-en [246 kB]
Get:10 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 DEP-11 Metadata [283 kB]
Get:11 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [792 kB]
Get:12 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [13,9 kB]
Get:13 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [843 kB]
Get:14 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe i386 Packages [626 kB]
Get:15 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [177 kB]
Get:16 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe amd64 DEP-11 Metadata [339 kB]
Get:17 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [18,4 kB]
Get:18 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse i386 Packages [8вЂЇ248 B]
Get:19 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [24,4 kB]
Get:20 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 DEP-11 Metadata [944 B]
Get:21 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse DEP-11 48x48 Icons [1вЂЇ865 B]
Get:22 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse DEP-11 64x64 Icons [2вЂЇ498 B]
Get:23 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [640 B]
Get:24 http://ru.archive.ubuntu.com/ubuntu focal-backports/universe amd64 DEP-11 Metadata [10,3 kB]
Hit:25 https://download.docker.com/linux/ubuntu focal InRelease               
Get:26 http://security.ubuntu.com/ubuntu focal-security/main i386 Packages [269 kB]
Get:27 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [156 kB]
Get:28 http://security.ubuntu.com/ubuntu focal-security/main amd64 DEP-11 Metadata [27,6 kB]
Get:29 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [8вЂЇ364 B]
Get:30 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [635 kB]
Get:31 http://security.ubuntu.com/ubuntu focal-security/universe i386 Packages [505 kB]
Get:32 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [98,4 kB]
Get:33 http://security.ubuntu.com/ubuntu focal-security/universe amd64 DEP-11 Metadata [60,8 kB]
Get:34 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [12,0 kB]
Get:35 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 DEP-11 Metadata [2вЂЇ468 B]
Fetched 7вЂЇ147 kB in 5s (1вЂЇ334 kB/s)                               
Reading package lists... Done
Building dependency tree       
Reading state information... Done
28 packages can be upgraded. Run 'apt list --upgradable' to see them.
N: Skipping acquire of configured file 'nginx/binary-i386/Packages' as repository 'http://nginx.org/packages/ubuntu focal InRelease' doesn't support architecture 'i386'
'dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo apt install nginx
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  nginx
0 upgraded, 1 newly installed, 0 to remove and 28 not upgraded.
Need to get 878 kB of archives.
After this operation, 3вЂЇ116 kB of additional disk space will be used.
Get:1 http://nginx.org/packages/ubuntu focal/nginx amd64 nginx amd64 1.20.1-1~focal [878 kB]
Fetched 878 kB in 1s (852 kB/s)
Selecting previously unselected package nginx.
(Reading database ... 166884 files and directories currently installed.)
Preparing to unpack .../nginx_1.20.1-1~focal_amd64.deb ...
----------------------------------------------------------------------

Thanks for using nginx!

Please find the official documentation for nginx here:
* https://nginx.org/en/docs/

Please subscribe to nginx-announce mailing list to get
the most important news about nginx:
* https://nginx.org/en/support.html

Commercial subscriptions for nginx are available on:
* https://nginx.com/products/

----------------------------------------------------------------------
Unpacking nginx (1.20.1-1~focal) ...
Setting up nginx (1.20.1-1~focal) ...
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service в†’ /li
b/systemd/system/nginx.service.
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for systemd (245.4-4ubuntu3.11) ...
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo dpkg -r nginx
(Reading database ... 166917 files and directories currently installed.)
Removing nginx (1.20.1-1~focal) ...
Processing triggers for man-db (2.9.1-1) ...
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo snap install gzip
error: snap "gzip" not found
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo snap install zip
error: snap "zip" not found
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo snap install redis
redis 6.2.5 from Redis Labs (redislabs) installed

dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -F
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -P INPUT DROP
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -P OUTPUT DROP
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A OUTPUT -p TCP -m tcp --sport 32768:61000 -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A OUTPUT -p UDP -m udp --sport 32768:61000 -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A INPUT -p TCP -m state --state ESTABLISHED,RELATED -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A INPUT -p UDP -m state --state ESTABLISHED,RELATED -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A INPUT -p TCP -m state --state ESTABLISHED,RELATED -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT 
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A OUTPUT -p tcp -m tcp --sport 22 -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo iptables -A OUTPUT -p tcp -m tcp --sport 80 -j ACCEPT
dmitry@dmitry-VirtualBox:/etc/apt/sources.list.d$ sudo sysctl -w net.ipv4.ip_forward=1
net.ipv4.ip_forward = 1


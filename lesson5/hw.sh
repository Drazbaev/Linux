dmitry@dmitry-VirtualBox:~$ touch file1.sh
dmitry@dmitry-VirtualBox:~$ echo 'hello world' > file1.sh
dmitry@dmitry-VirtualBox:~$ cp file1.sh file2.sh
dmitry@dmitry-VirtualBox:~$ ln -s file1.sh file3.sh
dmitry@dmitry-VirtualBox:~$ ls -li |grep file
2504500 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 15 16:45 file
2492746 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 29 12:21 file1.sh
2492849 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 29 12:22 file2.sh
2492743 lrwxrwxrwx 1 dmitry dmitry       8 РёСЋР» 29 12:22 file3.sh -> file1.sh
2491969 -rw-rw-r-- 1 dmitry dmitry      13 РёСЋР» 15 15:56 hw.file
dmitry@dmitry-VirtualBox:~$ rm file1.sh
dmitry@dmitry-VirtualBox:~$ ls -li |grep file
2504500 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 15 16:45 file
2492849 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 29 12:22 file2.sh
2492743 lrwxrwxrwx 1 dmitry dmitry       8 РёСЋР» 29 12:22 file3.sh -> file1.sh
2491969 -rw-rw-r-- 1 dmitry dmitry      13 РёСЋР» 15 15:56 hw.file
dmitry@dmitry-VirtualBox:~$ cat file3.sh
cat: file3.sh: No such file or directory
dmitry@dmitry-VirtualBox:~$ mv file2.sh file4.sh
dmitry@dmitry-VirtualBox:~$ rm file3.sh
dmitry@dmitry-VirtualBox:~$ cp file4.sh file5.sh
dmitry@dmitry-VirtualBox:~$ mkdir filedir
dmitry@dmitry-VirtualBox:~$ ln -s file5.sh file6.sh
dmitry@dmitry-VirtualBox:~$ ln -s file4.sh file7.sh
dmitry@dmitry-VirtualBox:~$ ls -li |grep file
2504500 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 15 16:45 file
2492849 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 29 12:22 file4.sh
2492743 -rw-rw-r-- 1 dmitry dmitry      12 РёСЋР» 29 12:32 file5.sh
2492180 lrwxrwxrwx 1 dmitry dmitry       8 РёСЋР» 29 12:34 file6.sh -> file5.sh
2493026 lrwxrwxrwx 1 dmitry dmitry       8 РёСЋР» 29 12:34 file7.sh -> file4.sh
 799328 drwxrwxr-x 2 dmitry dmitry    4096 РёСЋР» 29 12:32 filedir
2491969 -rw-rw-r-- 1 dmitry dmitry      13 РёСЋР» 15 15:56 hw.file
dmitry@dmitry-VirtualBox:~$ mv file6.sh ./filedir/file6.sh
dmitry@dmitry-VirtualBox:~$ mv file7.sh ./filedir/file7.sh
dmitry@dmitry-VirtualBox:~$ cd filedir
dmitry@dmitry-VirtualBox:~/filedir$ ls -li
total 0
2492180 lrwxrwxrwx 1 dmitry dmitry 8 РёСЋР» 29 12:34 file6.sh -> file5.sh
2493026 lrwxrwxrwx 1 dmitry dmitry 8 РёСЋР» 29 12:34 file7.sh -> file4.sh
dmitry@dmitry-VirtualBox:~/filedir$ 
dmitry@dmitry-VirtualBox:~/filedir$ touch file8.sh
dmitry@dmitry-VirtualBox:~/filedir$ touch file9.sh


dmitry@dmitry-VirtualBox:~/filedir$ ls -la
total 8
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file8.sh
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file9.sh
dmitry@dmitry-VirtualBox:~/filedir$ chmod go+rw file8.sh
dmitry@dmitry-VirtualBox:~/filedir$ ls -la
total 8
-rw-rw-rw-  1 dmitry dmitry    0 РёСЋР» 29 12:36 file8.sh
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file9.sh
dmitry@dmitry-VirtualBox:~/filedir$ chmod ug+rw file8.sh
dmitry@dmitry-VirtualBox:~/filedir$ ls -la
total 8
-rw-rw----  1 dmitry dmitry    0 РёСЋР» 29 12:36 file8.sh
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file9.sh
dmitry@dmitry-VirtualBox:~/filedir$ chmod o+r file8.sh
dmitry@dmitry-VirtualBox:~/filedir$ ls -la
total 8
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file8.sh
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file9.sh
dmitry@dmitry-VirtualBox:~/filedir$ chmod go-rw file9.sh
dmitry@dmitry-VirtualBox:~/filedir$ ls -la
total 8
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file8.sh
-rw-------  1 dmitry dmitry    0 РёСЋР» 29 12:36 file9.sh

dmitry@dmitry-VirtualBox:~/filedir$ chmod 664 file8.sh
dmitry@dmitry-VirtualBox:~/filedir$ chmod 600 file9.sh
dmitry@dmitry-VirtualBox:~/filedir$ ls -la
total 8
-rw-rw-r--  1 dmitry dmitry    0 РёСЋР» 29 12:36 file8.sh
-rw-------  1 dmitry dmitry    0 РёСЋР» 29 12:36 file9.sh


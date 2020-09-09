# Shell script language
## blkdiscard
```bash
$ sudo blkdiscard /dev/sdb
```
  delete mapping data in Device , should wait for 10 minutes to complete the job.
## iostat  
```bash
$ sudo iostat -x /dev/sdb* 10 1080
```
  shows IO status about device in 1080 * 10 seconds with 10 seconds term.
  
  you should install sysstat by sudo apt-get install sysstat.

## tar copy

```bash
$ tar cvf - * | (cd /${destination_dir} ; tar xvf -)
```
  copy all files in current directory to destination directory very fast.
  
## privileges 

  give all privileges to file 

## IO scheduler


```bash
$ sudo -i
[sudo] password for Username: 
root@Username-empty:~# echo noop > /sys/block/sda/queue/scheduler
root@Username-empty:~# cat /sys/block/sda/queue/scheduler
[noop] deadline cfq 
root@Username-empty:~# exit
```

noop is faster in SSD because SSD has IO scheduler in it (FTL).

And it's more faster than OS's CFQ scheduler.

## show storage devices 

```bash
$ sudo fdisk -l
```

## make partition on device

```bash
$ sudo fdisk /dev/sdb
```
press n
press ENTER
press ENTER
press ENTER
press w

## show device's name
```bash
$ sudo 
```


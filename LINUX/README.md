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
```bash
$ sudo chmod -R 777 *
$ sudo chown -R $Username:$Username *
```
  give all privileges to file 

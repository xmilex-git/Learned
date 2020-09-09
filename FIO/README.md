# FIO
how to use :
```bash
$ sudo fio [-options]
```
## options
- Set Test Directory
```bash
$ sudo fio --filename=/dev/sdc
# or
$ sudo fio --directory=/home/Username/testDIR
```
when you have to use Raw-device mode benchmark, Use --filename=/dev/$device_name.

Or you can use common directory by --directory=/$directory .



- Use OS IO buffer or direct

```bash
$ sudo fio --direct=1
```

when you don't have to use OS IO buffer , direct=1.



- Read/Write modes

```bash
$ sudo fio --rw=randread
# or randwrite, read, write..
```
you can choose IO type to test.

- IO depth

```bash
$ sudo fio --iodepth=32
# 1, 2, 4, 8, 16, 32, 64...
```
you can choose IO depth to test.

IO depth is SSD's property. With using this option, you can use SSD's parallelism.

It will make your SSD faster.




- overwrites

```bash
$ sudo fio --overwrite=1
```

when there are test-files backup , you can use this option to use it.



- randrepeats

```bash
$ sudo fio --randrepeat=0
```
off this option for fast.



- IO engine

```bash
$ sudo fio --ioengine=libaio
```

I recommend you this option for default.



- Numjobs ( NPROC )

```bash
$ sudo fio --numjobs=${n_jobs}
```

How many processes to create and run this benchmark.



- Block size ( for block devices )

```bash
$ sudo fio --bs=256K
```

you can choose block size. write/read requests this size of data in one I/O.



- File size

```bash
$ sudo fio --filesize=1024M
```

you can make alloced test-file through this option. per one job (PROC).



- runtime or runsize
```bash
# size-based
$ sudo fio --size=10G

# time-based
$ sudo fio --time_based=1 --runtime=30
# 30 means 30seconds
```

- name
```bash
$ sudo fio --name=fio_seq_write_test
```

- fill_device
```bash
$ sudo fio --fill_device=1
```

fill device full with options




- stdout
```bash
$ sudo fio >> /home/song/results/fio_rndwr_470_fio_out.txt
```

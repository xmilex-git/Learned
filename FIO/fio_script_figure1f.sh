#!/bin/bash


n_iodepth=32
n_jobs=32
homedir=$(cd; pwd)


echo "Yourpassword"|sudo -S fio --filename=/dev/sdc --direct=1 --rw=randread --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=4K --filesize=1024M --time_based=1 --runtime=30 --name=fio_rnd_read_test >>$homedir/results/fio_rndrd_470_fio_out.txt





echo "Yourpassword"|sudo -S fio --filename=/dev/sdc --direct=1 --rw=randwrite --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=4K --filesize=1024M --time_based=1 --runtime=30 --name=fio_rnd_write_test >>$homedir/results/fio_rndwr_470_fio_out.txt






echo "Yourpassword"|sudo -S fio --filename=/dev/sdc --direct=1 --rw=read --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=256K  --filesize=1024M --time_based=1 --runtime=30 --name=fio_seq_read_test >>$homedir/results/fio_seqrd_470_fio_out.txt





echo "Yourpassword"|sudo -S fio --filename=/dev/sdc --direct=1 --rw=write --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=256K  --filesize=1024M --time_based=1 --runtime=30 --name=fio_seq_write_test >>$homedir/results/fio_seqwr_470_fio_out.txt


#!/bin/bash

n_iodepth=32

echo "2702"|sudo -S fio --directory=/home/song/test_nvme --direct=1 --rw=randwrite --overwrite=1 --randrepeat=0 --ioengine=libaio \
 --numjobs=32 --bs=4K --iodepth=32  --filesize=1024M --time_based=1 --runtime=30 --name=fio_rnd_write_test \
 --allow_mounted_write 1 >>/home/song/results/fio_rndwr_nvme_fio_out_2.txt


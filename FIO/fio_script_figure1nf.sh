#!/bin/bash


n_iodepth=32
n_jobs=32
n_sync=32


echo "Yourpassword"|sudo -S fio --filename=/dev/nvme0n1 --direct=1 --rw=randread --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=4K --iodepth=${n_iodepth} --filesize=1024M --time_based=1 --runtime=1800 --name=fio_rnd_read_test >>/home/song/results/fio_rndrd_nvme_fio_out.txt





echo "Yourpassword"|sudo -S fio --filename=/dev/nvme0n1 --direct=1 --rw=randwrite --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=4K --iodepth=${n_iodepth} --filesize=1024M --time_based=1 --runtime=1800 --name=fio_rnd_write_test >>/home/song/results/fio_rndwr_nvme_fio_out.txt






echo "Yourpassword"|sudo -S fio --filename=/dev/nvme0n1 --direct=1 --rw=read --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=256K --iodepth=${n_iodepth} --filesize=1024M --time_based=1 --runtime=1800 --name=fio_seq_read_test >>/home/song/results/fio_seqrd_nvme_fio_out.txt





echo "Yourpassword"|sudo -S fio --filename=/dev/nvme0n1 --direct=1 --rw=write --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=${n_jobs} --bs=256K --iodepth=${n_iodepth} --filesize=1024M --time_based=1 --runtime=1800 --name=fio_seq_write_test >>/home/song/results/fio_seqwr_nvme_fio_out.txt


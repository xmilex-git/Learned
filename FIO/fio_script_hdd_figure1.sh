#!/bin/bash

homedir=$(cd; pwd)
cd $homedir/load_backup
cd fio_rnd_read
tar cvf - * | (cd $homedir/test_hdd ; tar xvf -)
cd $homedir/test_hdd
echo "Yourpassword"|sudo -S chmod -R 777 *
cd

echo "Yourpassword"|sudo -S fio --directory=$homedir/test_hdd --direct=1 --rw=randread --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=32 --bs=4K --filesize=1024M --time_based=1 --runtime=30 --name=fio_rnd_read_test --allow_mounted_write 1 >>$homedir/results/fio_rndrd_hdd_fio_out.txt




cd $homedir/test_hdd
echo "Yourpassword"|sudo -S rm -r *
cd


cd $homedir/load_backup
cd fio_rnd_write
tar cvf - * | (cd $homedir/test_hdd ; tar xvf -)
cd $homedir/test_hdd
echo "Yourpassword"|sudo -S chmod -R 777 *
cd


echo "Yourpassword"|sudo -S fio --directory=$homedir/test_hdd --direct=1 --rw=randwrite --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=32 --bs=4K --filesize=1024M --time_based=1 --runtime=30 --name=fio_rnd_write_test --allow_mounted_write 1 >>$homedir/results/fio_rndwr_hdd_fio_out.txt


cd $homedir/test_hdd
echo "Yourpassword"|sudo -S rm -r *
cd


cd $homedir/load_backup
cd fio_seq_read
tar cvf - * | (cd $homedir/test_hdd ; tar xvf -)
cd $homedir/test_hdd
echo "Yourpassword"|sudo -S chmod -R 777 *
cd


echo "Yourpassword"|sudo -S fio --directory=$homedir/test_hdd --direct=1 --rw=read --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=32 --bs=256K --filesize=1024M --time_based=1 --runtime=30 --name=fio_seq_read_test --allow_mounted_write 1 >>$homedir/results/fio_seqrd_hdd_fio_out.txt


cd $homedir/test_hdd
echo "Yourpassword"|sudo -S rm -r *
cd

cd $homedir/load_backup
cd fio_seq_write
tar cvf - * | (cd $homedir/test_hdd ; tar xvf -)
cd $homedir/test_hdd
echo "Yourpassword"|sudo -S chmod -R 777 *
cd


echo "Yourpassword"|sudo -S fio --directory=$homedir/test_hdd --direct=1 --rw=write --overwrite=1 --randrepeat=0 --ioengine=libaio --numjobs=32 --bs=256K --filesize=1024M --time_based=1 --runtime=30 --name=fio_seq_write_test --allow_mounted_write 1 >>$homedir/results/fio_seqwr_hdd_fio_out.txt


cd $homedir/test_hdd
echo "Yourpassword"|sudo -S rm -r *
cd
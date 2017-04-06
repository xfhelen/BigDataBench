#!/bin/bash
i=0
# vms=()
for file in /etc/xen/test/*.cfg
do
	echo $file
#	vms[$i]=${file:0-7:3}
	i=`expr $i + 1`
	echo $i
#	echo ${vms[$i]}
#	`rm -R ${file}`
done 
#echo $vms
vms=('vm0', 'vm1', 'vm2', 'vm3', 'vm4', 'vm5')
for file in vms
do
	vm_files=`find / -name *${file}*`
	rm -R $vm_files
	echo 'Deleting $vm_files'
done


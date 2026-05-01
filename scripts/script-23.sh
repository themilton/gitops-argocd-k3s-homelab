resham@devbox:~$ sudo virsh edit k3s-node-1
# Change: <target dev='sda' bus='scsi'/> 
# To:     <target dev='vda' bus='virtio'/>

resham@devbox:~$ sudo virsh destroy k3s-node-1 && sudo virsh start k3s-node-1

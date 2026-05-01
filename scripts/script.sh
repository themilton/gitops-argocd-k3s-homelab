# Create the base image first — Ubuntu 22.04 Server
resham@devbox:~$ virt-install \
  --name k3s-base \
  --ram 4096 \
  --vcpus 2 \
  --disk path=/var/lib/libvirt/images/k3s-base.qcow2,size=40 \
  --os-variant ubuntu22.04 \
  --network bridge=br0 \
  --graphics none \
  --console pty,target_type=serial \
  --cdrom /home/resham/isos/ubuntu-22.04.4-live-server-amd64.iso \
  --extra-args 'console=ttyS0'

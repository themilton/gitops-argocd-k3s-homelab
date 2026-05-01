# Clone for 3 nodes
for i in 1 2 3; do
  sudo virt-clone \
    --original k3s-base \
    --name k3s-node-${i} \
    --file /var/lib/libvirt/images/k3s-node-${i}.qcow2

  # Start the clone, change hostname
  sudo virsh start k3s-node-${i}
done

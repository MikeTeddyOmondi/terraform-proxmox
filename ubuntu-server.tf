resource "proxmox_vm_qemu" "ubuntu_server_1" {
  name        = "ubuntu-server"
  desc        = "Ubuntu Server"
  vmid        = "101"
  target_node = "proxmox-vm"

  agent = 0 # Set to 1 if qemu guest agent is set on the VM template
  kvm   = false

  clone   = "ubuntu-server-focal"
  cores   = 1
  sockets = 1
  cpu     = "kvm64" # cpu = "host"
  memory  = 512

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  disk {
    storage = "local"
    type    = "virtio"
    size    = "8G"
  }

  os_type    = "cloud-init"
  ipconfig0  = "ip=192.168.139.1/20,gw=192.168.139.2"
  nameserver = "192.168.139.2"
  ciuser     = "xcad"
  # sshkeys = <<EOF
  # ssh-rsa SSHKEY
  # EOF

}


terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.7.4"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.proxmox_url
  pm_api_token_id = "terraform@pam!terraform_access"
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "test_server" {
  count = 1 # number of vms needed, set to 0 and apply to destroy VMs
  name = "oak-vm-${count.index + 1}" #count.index starts at 0, so + 1 means this VM will be named oak-vm-1 in proxmox

  # this now reaches out to the vars file.
  target_node = var.proxmox_host
  clone = var.template_name

  # basic VM settings
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 2048
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"

  disk {
    slot = 0
    size = "32G"
    type = "scsi"
    storage = "hdd-img"
    iothread = 1
  }
  
  # if two NICs, just copy this whole network section and duplicate it
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  # Random MAC addresses and ignore network changes during the life of the VM
  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  ipconfig0 = "ip=10.0.0.2${count.index + 1}/24,gw=10.0.0.254"
  
  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}

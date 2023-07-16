variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJLOQdVS6sYrWf45S/opEV6lOKPDEo/LS+is0Ly875KH6Cm07M907S/FUBzCoYVPxZNOOYVU+aiSpjHyJ7wsBolBELSC+kUQwO96OAua4GJtg+pK/MUZjBLjcldggNpHy6UdkxD2BKRoEvUfIe+I0akcDVB5DfX5IgyhwbhuiQ18W6v0XF8PVkNSEgfD3yO6jNwk855CyA9SbdvAsM7n/0aMF491+IFIUkf4sPCPNrBtMfyVwSviBVD5N4dZVpp3rVg8Zhq61h0Daot4qCg+TtHTQt/RCmfbAYtHz/mBWlRAKfI17yohGgB47KGStdIHnRskunnlNIiPykA50LdodNGicPbxQHiOUb6TEKiuqrXAQbFST1oQxYZHdNT606wXPLr6jtJJ8qmM7zsRBgGL9E5HhOHg9mPuASikQNEdM9g8LEIcSMUGNHxgx4EixuOEqJSfOYOln0UNDj4FC7znhq0P6azW7k+DCUjHMI9Pb3k2MMcqaNv2iIe/zDyCXQJck= john@millhouse"
}
variable "proxmox_host" {
    default = "alpha"
}
variable "template_name" {
    default = "ubuntu-2204-template"
}
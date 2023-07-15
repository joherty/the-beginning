# the-beginning

ssh-keygen

sudo vim /etc/netplan/01-network-configuration.yaml

network:
  version: 2
  renderer: NetworkManager
  ethernets:
    ens18:
      addresses:
        - 10.0.0.20/24
      nameservers:
        addresses: [1.1.1.1, 1.1.2.2]
      routes:
        - to: default
          via: 10.0.0.254
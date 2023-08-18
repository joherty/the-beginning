# In the beginning

This is the complete **Infastructure as Code** reference for my home services.

### Terraform

This section details the initial terraform configuration with **ProxMox**

### Ansible



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

## ssh commands
`ssh-keygen`
cat ~/.ssh/id_rsa.pub | ssh john@10.0.0.20 'cat >> .ssh/authorized_keys'

## Create a secure key for ansible using ed35519
ssh-keygen -t ed25519 -C "ansible"
##
save as /home/john/.ssh/ansible

## copy to servers
ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.21
ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.22
ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.23

ansible all --key-file ~/.ssh/ansible -i inventory -m ping
    after creating and populating ansible.cfg, the command can shorten to:
ansible all -m ping


ansible-playbook --ask-become-pass update_servers.yaml

ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.8

ansible all -m gather_facts --limit 10.0.0.8 | grep "ansible_distribution"

ansible all --key-file ~/.ssh/ansible -i inventory -m ping

ansible all -m gather_facts --limit 10.0.0.8 | grep ansible_distribution


##Notes

ssh-keygen
cat ~/.ssh/id_rsa.pub | ssh john@10.0.0.20 'cat >> .ssh/authorized_keys'

## Create a secure key for ansible using ed35519
ssh-keygen -t ed25519 -C "ansible"

##
save as /home/john/.ssh/ansible

ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.21
ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.22
ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.23


sudo cat /etc/netplan/01-network-configuration.yaml

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

https://github.com/docker/compose/releases/download/v2.20.2/docker-compose-linux-x86_64

https://accesto.com/blog/docker-reverse-proxy-using-traefik/

https://community.traefik.io/t/lets-encrypt-dns-challenge-via-traefik-docker-compose-problem-only-on-arch/18746

https://www.smarthomebeginner.com/traefik-docker-compose-guide-2022/
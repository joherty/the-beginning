ansible-playbook --ask-become-pass update_servers.yaml

ssh-copy-id -i ~/.ssh/ansible.pub 10.0.0.8

ansible all -m gather_facts --limit 10.0.0.8 | grep "ansible_distribution"

ansible all --key-file ~/.ssh/ansible -i inventory -m ping

ansible all -m gather_facts --limit 10.0.0.8 | grep ansible_distribution
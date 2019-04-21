# Ansible

> Installation et configuration
yum install epel-release
yum install ansible
yum install nano nmap
nmap -sP 192.168.1.0/24
nano /etc/hosts
192.168.1.5 HOSTNAMEDISTANT

ssh-keygen
cat /etc/hosts
ssh-copy-id MACHINE4
ssh MACHINE4
ssh-copy-id MACHINE5
ssh-copy-id MACHINE6

nano /etc/ansible/hosts
[GROUP]
192.168.1.5 ansible_port=2222 ansible_user=root ansible_ssh_private_key_file=PRIVATEKEY
>> ou
HOSTNAMEDISTANT

ansible -m ping all

> Instructions en CLI
ansible -m yum -a 'name=* state=latest' ALLMIMES
ansible -m yum -a 'name=epel-release state=latest' ALLMIMES
ansible -m yum -a 'name=htop state=latest' ALLMIMES
ansible -m yum -a 'name=nano state=latest' ALLMIMES
ansible -m shell -a 'uname -a' MACHINE5

> Les playbooks

nano upgrade.yml

---
- hosts: ALLMIMES
  remote_user: root

  tasks:
    - name: update
      apt: update_cache=yes
    - name: upgrade
      apt: upgrade=dist
    - name: install nano
      apt: name=nano state=present
    - name: install common packages for all servers
      apt: 
        update_cache=yes
        state=latest
        name={{item}}
      with_items: 
      - curl
      - htop
      - ncdu
      - pwgen
      - strace
      - sudo
      - tar
      - unzip
      - vim
      - wget
      - whois
      - screen

ansible-playbook upgrade.yml --verbose

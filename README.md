# Ansible Home Lab: Linux Hardening

Small home lab to practice Linux automation with Ansible.
Lab only. No production systems.

## Lab
- 1 control node and 3 managed nodes (2 AlmaLinux 9.8, 1 Ubuntu 20.04, VMware)
- Key-based SSH from control to managed nodes

## Playbooks
- first.yml: install a package idempotently
- harden-ssh.yml: disable root login and password login on AlmaLinux and Ubuntu (OS-family variable)
- harden-firewall.yml: allow only SSH in firewalld (variables and loops)
- motd.yml: per-server login banner from a Jinja2 template

## Result
Each change was checked before and after (sshd -T, firewall-cmd).

## Roles
- ssh_hardening (harden-ssh-role.yml): disables root login and password login; tested on AlmaLinux and Ubuntu
- firewall_hardening (harden-firewall-role.yml): firewalld allows SSH only; tested on AlmaLinux
- ufw_hardening (harden-ufw-role.yml): ufw allows SSH first, then enables the firewall; tested on Ubuntu

## Requirements
- ansible-core 2.14
- Collections: ansible.posix, community.general

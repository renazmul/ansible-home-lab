# Ansible Home Lab: Linux Hardening

Small home lab to practice Linux automation with Ansible.
Lab only. No production systems.

## Lab
- 1 control node and 2 managed nodes (AlmaLinux 9.8, VMware)
- Key-based SSH from control to managed nodes

## Playbooks
- first.yml: install a package idempotently
- harden-ssh.yml: disable root login and password login
- harden-firewall.yml: allow only SSH in firewalld (variables and loops)
- motd.yml: per-server login banner from a Jinja2 template

## Result
Each change was checked before and after (sshd -T, firewall-cmd).

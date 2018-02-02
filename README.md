# Using Ansible to orchestrate OpenStack
Using openstack-ansible for the deployment and configuration of an OpenStack environment

## Prerequirements
  - ansible
  - python >= 2.7
  - python-openstackclient
  - python-heatclient
  - shade


## Run
Create a keystone_rc.sh file as described here: http://docs.uh-iaas.no/en/latest/api.html#openstack-command-line-interface-cli

```bash
source keystone_rc.sh
```

Example:
```bash
ansible-playbook -e "hosts=<localhost>" <filename>.yaml
```
## Dry-run

To use dry-run add `--check` to the command

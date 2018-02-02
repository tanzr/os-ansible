#!/bin/bash

# print help
function usage {
  echo ""
  echo "This will detach the volume from the host, and delete both the volume and instance."
  echo ""
  exit 1
}

ansible-playbook -e "hosts=localhost" lib/detach_volume.yaml
ansible-playbook -e "hosts=localhost" lib/delete_volume.yaml
ansible-playbook -e "hosts=localhost" lib/delete_instance.yaml


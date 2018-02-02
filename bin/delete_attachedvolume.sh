#!/bin/bash

# print help
function usage {
  echo ""
  echo "This will delete an attached volume."
  echo ""
  exit 1
}

ansible-playbook -e "hosts=localhost" lib/detach_volume.yaml
ansible-playbook -e "hosts=localhost" lib/delete_volume.yaml
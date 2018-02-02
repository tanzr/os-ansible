#!/bin/bash

# print help
function usage {
  echo ""
  echo "This creates an instance along with an attached volume."
  echo ""
  exit 1
}

ansible-playbook -e "hosts=localhost" lib/launch_instance.yaml
ansible-playbook -e "hosts=localhost" lib/create_volume.yaml
ansible-playbook -e "hosts=localhost" lib/attach_volume.yaml


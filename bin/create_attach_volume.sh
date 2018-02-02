#!/bin/bash

# print help
function usage {
  echo ""
  echo "This will create a volume and attach it to an instance."
  echo ""
  exit 1
}

ansible-playbook -e "hosts=localhost" lib/create_volume.yaml
ansible-playbook -e "hosts=localhost" lib/attach_volume.yaml
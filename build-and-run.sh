#!/bin/bash
ansible-playbook -i ./local-hosts ./build-docker-container.yml --become && sleep 15 \
&& ansible-playbook -i ./local-hosts ./configure-environment.yml --become && sleep 5 \
&& ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ./hosts ./setup-cloudstack.yml --become

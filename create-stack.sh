#!/bin/bash

# A script to deploy the initial stack in Google Cloud and 
# then apply Ansible playbooks to it.
#
# Dependencies:
# - ansible
# - gcloud SDK
#

# Parameters
STACK_NAME="thatoldslice-2"

# Deploy the stack
gcloud deployment-manager deployments create ${STACK_NAME} \
	--config ./deployment-manager/thatoldslice-infrastructure.yml

# Run ansible playbook
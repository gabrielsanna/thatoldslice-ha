#!/bin/bash

# A script to update the stack in Google Cloud and 
# then reapply Ansible playbooks to it.
#
# Dependencies:
# - ansible
# - gcloud SDK
#

# Parameters
STACK_NAME="thatoldslice-10"

# Deploy the stack
gcloud deployment-manager deployments update ${STACK_NAME} \
	--config ./deployment-manager/thatoldslice-infrastructure.yml

if [ $? != 0 ]; then
	echo "An error occurred updating the stack."
	exit 1
fi

# Fix Django database config
echo "Fixing Django settings..."
DB_IP=$(gcloud sql instances describe ${STACK_NAME}-instance | grep ipAddress: | awk -F':' '{print $2}' | awk '{print $1}')
DB_NAME="${STACK_NAME}-db"
DB_USER="${STACK_NAME}"

sed -i '' 's/DB_IP.*/DB_IP: '${DB_IP}'/g' ansible/thatoldslice/vars/main.yml
sed -i '' 's/DB_NAME.*/DB_NAME: '${DB_NAME}'/g' ansible/thatoldslice/vars/main.yml
sed -i '' 's/DB_USER.*/DB_USER: '${DB_USER}'/g' ansible/thatoldslice/vars/main.yml

# Run ansible playbook
ansible-playbook -i ansible/inventory.gcp.yml ansible/main.yml

# Add/update an entry to hosts file
INSTANCE_IP=$(gcloud compute instances describe thatoldslice-webapp --zone us-east4-a | grep natIP | awk '{print $2}')

echo "The instance IP is ${INSTANCE_IP}. Please update thatoldslice.gabrielsanna.com DNS if necessary."

exit 0
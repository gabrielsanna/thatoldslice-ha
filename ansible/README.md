# thatoldslice-ha
A high-availability implementation of a pizzeria website using Ansible and Google Cloud

## Preparing workspace

https://medium.com/vimeo-engineering-blog/orchestrating-gce-instances-with-ansible-d825a33793cd

- Install Homebrew
- Install Python3 and Ansible
- Run pip3 install -r requirements.txt

On Google Cloud Console:

- Create project
- Create service account
- Set up environment variables with credentials
- Enable Compute Engine API
- - https://console.developers.google.com/apis/api/compute.googleapis.com/overview?project=771995374780

## Impressions of GC

- A lot more refreshing pages
- Console is not as orderly
- Account is Google account, which is both convenient and nerve-racking
- Everything is HTTP APIs behind the scenes, which means all error messages come with HTTP error codes (i.e. 400) and the API for each type of resource must be enabled
- Deleting stack does not delete all resources (disks persist and must be manually deleted)
- SQL database names are reserved for UP TO TWO MONTHS (The instance or operation is not in an appropriate state to handle the request.)
- DOcumentation is in its infancy - all my Google results are for AWS!
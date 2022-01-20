Ansible-Terraform-Trigger
This ansible playbook can be used to spin-up infra by triggering terraform scipts. This uses ansible's inbuilt terraform module.

Prerequisites
Terraform Installed on Target Machine.
Ansible 2.5+ ( 2.7+ to use Terraform's backend_config)

Files:
        - the Ansible playbook to be triggered (ansible-tf-plan.yaml)  
        - Terraform variable file 
        - the backed.tf file
        - the main.tf 


1 - Ansible playbook
        this playbook is the main file to run which contains terraform module contains main terraform path, 
run the ansible playbook 
ansible-playbook ansible-tf-plan.yaml -e "aws_region=us-west-2 nameTag=Mu1"

Ansible-Terraform-Trigger
This ansible playbook can be used to spin-up infra by triggering terraform scipts. This uses ansible's inbuilt terraform module.

Prerequisites
        - Terraform Installed on Target Machine.
        - Ansible 2.5+ ( 2.7+ to use Terraform's backend_config)
        - AWS Account configured on the machine 
Files:
        - the Ansible playbook to be triggered (ansible-tf-plan.yaml)  
        - Terraform variable file 
        - the backed.tf file
        - the main.tf 


1 - Ansible playbook
        this playbook is the main file to run which contains terraform module contains main terraform path, 
run the ansible playbook 
2 - main.tf
        this file contains the main terraform configuration wo provision an ec2 intance 
3 - backend.tf
        this file contains the defafult backend configuration to store the terraform.state file which will be replaced with the configuration in the main playbook
4 - vars.tf
        this file contains the terraform default variables which will be replaced with the variables in the playbook
        
 ansible-playbook ansible-tf-plan.yaml -e "aws_region=us-west-2 nameTag=Mu1"

resources:
        https://docs.ansible.com/ansible/2.9/modules/terraform_module.html
        https://docs.ansible.com/ansible/latest/collections/community/general/terraform_module.html
        https://github.com/NikAraga/ansible-tf-trigger
        https://belgium.devoteam.com/blog/ansible-and-terraform-episode-3
        

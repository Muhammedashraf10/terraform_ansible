Ansible-Terraform-Trigger 
This ansible playbook can be used to spin-up infra by triggering terraform scipts. This uses ansible's inbuilt terraform module.

Prerequisites 
	• Terraform Installed on Target Machine. 
	• Ansible 2.5+ ( 2.7+ to use Terraform's backend_config) 
	• AWS Account configured on the machine which has the terraform
	• Plugin community.general.collection for ansible should be installed 
Use ansible-galaxy collection install community.general to install it 

Files:
	- The Ansible playbook to be triggered (ansible-tf-plan.yaml)
	- Terraform variable file 
	- Terraform backed configuration file backend.tf
	- The main configuration file of terraform main.tf
	-  Output variables of terraform output.tf

Breaking down the files: 
	1 - Ansible playbook this playbook is the main file to run which contains terraform module contains main terraform path, run the ansible playbook 
	2 - main.tf this file contains the main terraform configuration wo provision an ec2 instance 3 - backend.tf this file contains the default backend configuration to store the terraform.state file which will be replaced with the configuration in the main playbook 
	4 - vars.tf this file contains the terraform default variables which will be replaced with the variables in the playbook.
	5 - output.tf which contains the needed parameters to be populated. 
	
You can define the variables which will be passed to terraform through ansible in a file
And refer to this file using the variables_files  parameter 
For example:

terraform: 
    variables_file: "{{ projectDir }}/{{ tfVariablesFileName }}"

ansible-playbook ansible-tf-plan.yaml -e "aws_region=us-west-2 nameTag=Mu1"
resources:  
https://docs.ansible.com/ansible/2.9/modules/terraform_module.html 
https://docs.ansible.com/ansible/latest/collections/community/general/terraform_module.html  
https://github.com/NikAraga/ansible-tf-trigger  
https://belgium.devoteam.com/blog/ansible-and-terraform-episode-3
![image](https://user-images.githubusercontent.com/14074873/150372199-81c70f42-94eb-4e7a-b32b-c6de97acfc54.png)

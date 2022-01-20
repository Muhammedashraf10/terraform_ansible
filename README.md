Ansible-Terraform-Trigger
This ansible playbook can be used to spin-up infra by triggering terraform scipts. This uses ansible's inbuilt terraform module.

Prerequisites
Terraform Installed on Target Machine.
Ansible 2.5+ ( 2.7+ to use Terraform's backend_config)

Files:
        - 



run the ansible playbook 
ansible-playbook ansible_tf_plan.yaml -e "aws_region=us-west-2 nameTag=Mu1"

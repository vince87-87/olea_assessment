# Setup & configure nginx on aws instance

## Provision infrastructure using terraform
### Folder structure

|S.No|    Name         |           Purpose                                              | 
|----|---------------- |----------------------------------------------------------------|
| 1. | ansible         | Contain ansible playbook ,ansible.cfg, inventory and variable to configure nginx   |
| 2. | module          | Contains terraform module to be reuseable by terraform, contain ec2, security group, security group rule & keypair modules |
| 3. | data.tf         | fetch data from aws  |
| 4. | instance.tf     | contains ec2 related resources |
| 5. | keypair.tf      | contain keypair related resource |
| 6. | provider.tf     | contain terraform provider  |
| 8. | README.md       | the content of this repository.|
| 9. | sg.tf           | contain security group resources
| 10. | terraform.tfvars      | variables values |
| 11. | variables.tf     | variables of terraform |

### Summary of the ansible playbook
```
- provision ec2 , keypair & security group on aws
- Update/install nginx on redhat / ubuntu server
- Create & copy the html default html directory
- Verify the website is accessible and content is showing correct content after reload the nginx config
```

### how to provision terraform
```
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
```

### how to run ansible playbook
```
cd ansible
ansible-playbook setup-nginx.yml 
```




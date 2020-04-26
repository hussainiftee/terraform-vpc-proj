# terraform-vpc-proj1
Create a VPC with 2 EC2 instance and http server. 
Creating an AWS Cloud9 which create an EC2 instance, then install terraform 11.5.

sudo curl -O https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip
sudo mkdir /bin/terraform 
sudo unzip terraform_0.11.5_linux_amd64.zip -d /usr/local/bin/
mkdir networking compute storage
touch {networking,compute,storage}/{main.tf,variables.tf,outputs.tf}
touch compute/userdata.tpl

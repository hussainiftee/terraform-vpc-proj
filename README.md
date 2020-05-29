# terraform-vpc-proj1
Create a VPC with 2 EC2 instance and http server. 
Creating an AWS Cloud9 which create an EC2 instance, then install terraform 11.5.

sudo curl -O https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip
sudo mkdir /bin/terraform 
sudo unzip terraform_0.11.5_linux_amd64.zip -d /usr/local/bin/
mkdir networking compute storage
touch {networking,compute,storage}/{main.tf,variables.tf,outputs.tf}
touch compute/userdata.tpl



Cloud Formation Template::::::

AWSTemplateFormatVersion: "2010-09-09"

Description: AWS Cloud9 Environment with Terraform
Parameters:

  EC2InstanceType:
    Description: EC2 instance type on which IDE runs
    Type:        String
    Default:     t2.micro

  AutoHibernateTimeout:
    Description:  How many minutes idle before shutting down the IDE. Options, 30min, 1hr, 4hr, 1day, 1week, Never (0)
    Type:         Number
    Default:      30

  SubnetIdentifier:
    Description: SubnetId
    Type: AWS::EC2::Subnet::Id


Resources:

  C9IDE:
    Type: 'AWS::Cloud9::EnvironmentEC2'
    Properties:
      Name: Terraform-Cloud9-IDE
      Description: Cloud9 IDE for Terraform
      AutomaticStopTimeMinutes: !Ref 'AutoHibernateTimeout'
      SubnetId: !Ref 'SubnetIdentifier'
      InstanceType: !Ref 'EC2InstanceType'
      Repositories:
          - RepositoryUrl: https://github.com/hussainiftee/terraform-vpc-proj.git
            PathComponent: terraform-vpc-proj

Outputs:

  Cloud9URL:
    Description: Cloud9 Environment
    Value:
      Fn::Join:
      - ''
      - - !Sub https://${AWS::Region}.console.aws.amazon.com/cloud9/ide/
        - !Ref 'C9IDE'




sudo yum install unzip
sudo yum update -y
sudo curl -O https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip
sudo mkdir /bin/terraform 
sudo unzip terraform_0.11.5_linux_amd64.zip -d /usr/local/bin/
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa 2>/dev/null <<< y >/dev/null


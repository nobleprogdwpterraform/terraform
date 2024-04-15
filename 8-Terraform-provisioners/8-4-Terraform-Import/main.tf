
provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}

#data "aws_instance" "ec2" {
 #   instance_id = "i-0c054e939f5668367"
#}

#output "ec2" {
 # value = data.aws_instance.ec2.public_dns
#}


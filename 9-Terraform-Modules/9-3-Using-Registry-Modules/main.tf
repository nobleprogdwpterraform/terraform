module "security_group_ssh" {
    source = "terraform-aws-modules/security-group/aws/modules/ssh"
    version= "3.16.0"
    vpc_id = "vpc_7d8d215"
    ingress_cidr_blocks = ["10.10.0.0/16"]
    name = "ssh-access"

}

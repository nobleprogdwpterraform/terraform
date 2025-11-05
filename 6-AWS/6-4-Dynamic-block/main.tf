
provider "aws" {
  region     = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "Ie2BePTRdH/Lke2rh1wJEtcrb4ZSNoo4OMtpMLRo"
}


resource "aws_security_group" "example" {
  name = "terraform_sg" # Replace terraform with your name (use lowercase)

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}
terraform {
  required_providers {
  aws = {
      source = "hashicorp/aws"
      version = "4.35.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "ap-south-1"
}

resource "aws_security_group_rule" "mysql" {
  provisioner "local-exec" {
  command = "echo 'Hello testing' > TerraFile"
  }
  count = length(var.sg_ingress_rules)
  type              = "ingress"
  from_port         = var.sg_ingress_rules[count.index].from_port
  to_port           = var.sg_ingress_rules[count.index].to_port 
  protocol          = "tcp"
  cidr_blocks       = [var.sg_ingress_rules[count.index].cidr_blocks] 
  security_group_id = "sg-ksuyexmeuss-da"
}

output "out"  { value = var.users[1]}

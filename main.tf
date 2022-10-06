terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}


resource "aws_instance" "app_server" {
  ami           = "ami-01216e7612243e0ef"
  instance_type = "t2.micro"

  tags = {
    Name = "This_is_my_first_server"
  }
}

# Configure the AWS Provider
provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
}

resource "aws_instance" "web"{
   ami          = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }

}
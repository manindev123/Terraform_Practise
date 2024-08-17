# Configure the AWS Provider
provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
}

resource "aws_instance" "web"{
   ami          = "ami-0ae8f15ae66fe8cda"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }

}
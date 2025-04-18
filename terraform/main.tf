provider "aws" {
  region = "us-east-2"  # Choose your AWS region
}

resource "aws_instance" "web" {
  count         = 1
  ami           = "ami-04f167a56786e4b09"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"               # Free-tier eligible instance type
  key_name      = "ansible-key"          # Replace with your actual EC2 key pair

  tags = {
    Name = "TerraformDemo
  }
}


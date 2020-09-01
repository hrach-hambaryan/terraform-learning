provider "aws" {
  access_key = "AKIAZ6IVL4YIUT4WRTNP"
  secret_key = "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"
  region     = "eu-central-1"
}

resource "aws_instance" "my_ubuntu" {
  ami           = "ami-04932daa2567651e7"
  instance_type = "t2.micro"

  tags = {
    Name    = "My Ubuntu Server"
    Owner   = "Grach Gambarian"
    Project = "Terraform Lessons"
  }
}

resource "aws_instance" "my_aws_linux" {
  ami           = "ami-0c115dbd34c69a004"
  instance_type = "t2.micro"

  tags = {
    Name    = "My Amazon Server"
    Owner   = "Grach Gambarian"
    Project = "Terraform Lessons"
  }
}

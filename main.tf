provider "aws" {
  profile = "default"
  region  = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = var.nameTag
  }
}

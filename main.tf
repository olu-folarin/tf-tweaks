terraform {
  backend "s3" {
    bucket = "folarin-state"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-state-lock"
    encrypt = true
    }
}

provider "random" {}

resource "random_pet" "name" {}

resource "aws_instance" "public_node" {
  ami                    = "ami-0acc77abdfc7ed5a6"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = file("init-script.sh")

  tags = {
    Name = random_pet.name.id
  }

  # create the security group before the instance
  depends_on = [aws_security_group.allow_tls]
}
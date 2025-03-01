data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "aula_ouputs"
  }
}

data "terraform_remote_state" "remote_backend_s3" {
  backend = "s3"
  config = {
    bucket = "descomplicando-terraform-linuxtips-teixeira-statefiles"
    key    = "aula-outputs"
    region = "us-east-1"
  }
}

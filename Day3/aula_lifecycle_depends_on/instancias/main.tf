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
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name       = var.name
    Env        = var.environment
    Plataforma = data.aws_ami.ubuntu.platform_details
  }

lifecycle {
    create_before_destroy = true
    # prevent_destroy       = true
    ignore_changes = [tags]
    replace_triggered_by = [aws_instance.bd.id]
  }

depends_on = [aws_instance.bd]

}

resource "aws_instance" "bd" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name       = var.name
    Env        = var.environment
    Plataforma = data.aws_ami.ubuntu.platform_details
  }

lifecycle {
    create_before_destroy = true
    # prevent_destroy       = true
    # ignore_changes = [tags]
  }
}
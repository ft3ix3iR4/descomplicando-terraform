resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = join(" ", cidrsubnet(aws_vpc.main.cidr_block, 8, 1))

  tags = {
    Name = "Main"
  }
}
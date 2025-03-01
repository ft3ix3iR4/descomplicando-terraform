# resource "aws_instance" "web" {
#   ami           = "ami-04b4f1a9cf54c11d0"
#   instance_type = "t2.micro"

#   tags = {
#     "Name" : "import_terraform"
#   }
# }

import {
  to = aws_instance.web
  id = "i-0d0959559afa5ab2d"
}



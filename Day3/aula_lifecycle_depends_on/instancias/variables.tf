variable "name" {
  type = string
  description = "Nome da instancia"
}

variable "environment" {
  type = string
  description = "Ambiente da instancia"
}

variable "ami" {
  type = string
  description = "ID da AMI a ser utilizada"
}
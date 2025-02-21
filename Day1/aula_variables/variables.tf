variable "image_id" {
  type        = string
  description = "ID da imagem."

  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }

  sensitive = true
}

variable "image_id_west" {
  type        = string
  description = "ID da imagem em outra regiao."

  validation {
    condition     = length(var.image_id_west) > 4 && substr(var.image_id_west, 0, 4) == "ami-"
    error_message = "The image_id_west value must be a valid AMI id, starting with \"ami-\"."
  }
}

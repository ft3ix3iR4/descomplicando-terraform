variable "name" {
  type        = string
  description = "Nome da instancia"
}

variable "environment" {
  type        = string
  description = "Ambiente da instancia"
}

# variable "set_nome_instancias" {
#   type        = set(string)
#   description = "Conjunto de nomes para as instancias"
#   default     = []
# }

variable "instancias" {
  type = map(object({
    instance_type = string
    environment   = string
  }))
  description = "Mapa de instancias"
  default     = {}
}

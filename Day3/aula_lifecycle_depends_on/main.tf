module "projetoa" {
  source = "./instancias"
  name = "novo_nome"
  environment = "develop"
  ami = "ami-091138d0f0d41ff90"
  #ami = "ami-05cf1e9f73fbad2e2"
}
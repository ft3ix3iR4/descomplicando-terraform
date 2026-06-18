module "projetoa" {
  source = "./instancias"
  name   = "ProjetoA"
  instancias = {
    front = {
      instance_type = "t2.micro"
      environment   = "production"
    },
    back = {
      instance_type = "t2.micro"
      environment   = "production"
    },
    db = {
      instance_type = "t3.micro"
      environment   = "production"
    }
  }

  environment = "production"
}

module "projetoa" {
  source = "./instancias"
  name = "movendo_state"
  environment = "develop"
}
moved {
  from = module.projetoa.aws_instance.web
  to = module.projetoa.aws_instance.this
}
module "vpc" {

  source               = "./modules/vpc"
  project_id           = var.project_id
  vpc_name             = var.vpc_name
  auto_subnet_creation = var.auto_subnet_creation
}

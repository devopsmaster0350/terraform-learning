module "vpc" {

  source               = "./modules/vpc"
  project_id           = var.project_id
  vpc_name             = var.vpc_name
  auto_subnet_creation = var.auto_subnet_creation
}

module "subnets" {
  source     = "./modules/subnets"
  project_id = var.project_id
  network_id = module.vpc.network_id
  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.1.0/24"
      subnet_region = "us-central1"
    },

    {
      subnet_name   = "subnet-02"
      subnet_ip     = "10.10.2.0/24"
      subnet_region = "us-west1"
    }

  ]
}

# conversting var.subnets list(objects) to list (maps) 

locals {
  subnets = {
    for x in var.subnets :
    "${x.subnet_region}/${x.subnet_name}" => x
  }
}



resource "google_compute_subnetwork" "vpc_subnets" {

  for_each      = local.subnets
  name          = each.value.subnet_name
  ip_cidr_range = each.value.subnet_ip
  region        = each.value.subnet_region
  network       = var.network_id
  project       = var.project_id
}

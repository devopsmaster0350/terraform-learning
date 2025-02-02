variable "subnets" {
  type = list(object({

    subnet_name   = string
    subnet_ip     = string
    subnet_region = string
  }))
}

variable "network_id" {
  type = string
}
variable "project_id"{
    type = string
}

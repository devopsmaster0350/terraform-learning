terraform {
  required_version = ">=0.13.0"
  required_providers {
    google = {

      source  = "hashicorp/google"
      version = ">= 4.25.0, < 7"

    }


  }

}

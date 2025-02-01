terraform {
  backend "gcs" {
    bucket = "terra-state-0350"
    prefix = "state/dev"
  }

}

terraform {
  backend "gcs" {
    bucket = "netflix-clone-dev-terraform-state"
    prefix = "terraform/state"
  }
}
module "vpc" {
  source = "../../modules/vpc/"
  project_id = var.project_id
  project_region = var.project_region
  subnet_name = var.subnet_name
  vpc_name = var.vpc_name
}
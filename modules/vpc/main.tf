resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
  project = var.project_id
  mtu = var.mtu
  routing_mode = var.global_routing_mode
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public_subnet" {
  name = var.subnet_name
  region = var.project_region
  network = google_compute_network.vpc_network.id
  ip_cidr_range = var.ip_range
  private_ip_google_access = true
  stack_type = var.stack_type
  log_config {
    aggregation_interval = var.aggregation_interval
    metadata = var.include_all_metadata
  }
}


resource "google_compute_subnetwork" "private_subnet" {
  name = var.subnet_name
  region = var.project_region
  network = google_compute_network.vpc_network.id
  ip_cidr_range = var.ip_range
  private_ip_google_access = true
  stack_type = var.stack_type
  log_config {
    aggregation_interval = var.aggregation_interval
    metadata = var.include_all_metadata
  }
}

resource "google_compute_subnetwork" "database_subnet" {
  name = var.subnet_name
  region = var.project_region
  network = google_compute_network.vpc_network.id
  ip_cidr_range = var.ip_range
  private_ip_google_access = true
  stack_type = var.stack_type
  log_config {
    aggregation_interval = var.aggregation_interval
    metadata = var.include_all_metadata
  }
}


resource "google_compute_subnetwork" "storage_subnet" {
  name = var.subnet_name
  region = var.project_region
  network = google_compute_network.vpc_network.id
  ip_cidr_range = var.ip_range
  private_ip_google_access = true
  stack_type = var.stack_type
  log_config {
    aggregation_interval = var.aggregation_interval
    metadata = var.include_all_metadata
  }
}
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }
}

provider "google" {
  project = "b2b-project_id"
  region  = "us-central1"
  zone    = "us-central1-a"
}

module "network" {
  source = "./Modules"

  project_id         = "b2b-project_id"
  region            = "us-central1"
  network_name      = "b2b-vpc"
  subnetwork_name   = "b2b-subnet"
  subnetwork_cidr   = "10.0.0.0/24"
  firewall_rule_name = "b2b-firewall"
  firewall_protocol = "tcp"
  firewall_ports    = ["80", "443"]
  firewall_source_ranges = ["0.0.0.0/0"]
  target_tags       = ["b2b-server"]
}

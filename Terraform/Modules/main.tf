terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource  "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_cidr
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "firewall_rule" {
  name    = var.firewall_rule_name
  network = google_compute_network.vpc_network.id

  allow {
    protocol = var.firewall_protocol
    ports    = var.firewall_ports
  }
  source_ranges = var.firewall_source_ranges
  target_tags   = var.target_tags
}

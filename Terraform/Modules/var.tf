variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region where resources will be created"
  type        = string
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "subnetwork_name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "subnetwork_cidr" {
  description = "CIDR range for the subnetwork"
  type        = string
}

variable "firewall_rule_name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "firewall_source_ranges" {
  description = "List of IP CIDR ranges that will be allowed to access the instances"
  type        = list(string)
}

variable "firewall_protocol" {
  description = "Protocol for the firewall rule"
  type        = string
}

variable "firewall_ports" {
  description = "List of ports to allow in the firewall rule"
  type        = list(string)
}

variable "target_tags" {
  description = "List of target tags for the firewall rule"
  type        = list(string)
}
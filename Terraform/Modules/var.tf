variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "my-vpc-network"
}

variable "subnetwork_name" {
  description = "Name of the subnetwork"
  type        = string
  default     = "my-subnet"
}

variable "subnetwork_cidr" {
  description = "CIDR range for the subnetwork"
  type        = string
  default     = "10.0.0.0/24"
}

variable "firewall_rule_name" {
  description = "Name of the firewall rule"
  type        = string
  default     = "allow-ssh"
}

variable "firewall_source_ranges" {
  description = "List of IP CIDR ranges that will be allowed to access the instances"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Note: For production, restrict this to specific IP ranges
}

variable "firewall_protocol" {
  description = "Protocol for the firewall rule"
  type        = string
  default     = "tcp"
}

variable "firewall_ports" {
  description = "List of ports to allow in the firewall rule"
  type        = list(string)
}

variable "target_tags" {
  description = "List of target tags for the firewall rule"
  type        = list(string)
}
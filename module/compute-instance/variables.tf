/**
  * only for test puprose
  */
      
    
variable "project" {
  type = string
  description = "the name of the gcp project"

variable "network" {
  description = "Network to deploy to. Only one of network or subnetwork should be specified."
  default     = ""
}

variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
  default     = ""
}

variable "subnetwork_project" {
  description = "The project that subnetwork belongs to"
  default     = ""
}

variable "hostname" {
  description = "Hostname of instances"
  default     = ""
}

variable "add_hostname_suffix" {
  description = "Adds a suffix to the hostname"
  default     = true
}

variable "static_ips" {
  type        = list(string)
  description = "List of static IPs for VM instances"
  default     = []
}

variable "access_config" {
  description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = []
}

variable "num_instances" {
  description = "Number of instances to create. This value is ignored if static_ips is provided."
  default     = "1"
}

variable "instance_template" {
  description = "Instance template self_link used to create compute instances"
}

variable "region" {
  type        = string
  description = "Region where the instances should be created."
  default     = null
}

variable "zone" {
  type        = string
  description = "Zone where the instances should be created. If not specified, instances will be spread across available zones in the region."
  default     = null
}

variable "hostname_suffix_separator" {
  type        = string
  description = "Separator character to compose hostname when add_hostname_suffix is set to true."
  default     = "-"
}

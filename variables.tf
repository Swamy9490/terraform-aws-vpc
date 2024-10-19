variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16" # users can override
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "common_tags" {
    type = map
    default = {} # it is optional
}

variable "vpc_tags" {
    type = map
    default = {}
}

variable "project_name"{
    type = string
}

variable "environment"{
    type = string
}

variable "igw_tags" {
    type = map
    default = {}
}

variable "public_subnets_cidr" {
    type = list
    validation {
        condition = length(var.public_subnets_cidr) == 2
        error_message = "please give public subnet CIDR"
    }
}

variable "public_subnets_tags" {
  default = {}
}
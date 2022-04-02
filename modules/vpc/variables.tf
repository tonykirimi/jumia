# VPC VARIABLES

variable "vpc_cidr_block" {

  description = "my personal project VPC CIDR"
  type        = string
  default     = "172.16.0.0/17"
}

variable "Redis_subnet_cidr_block" {
  description = "Selected Cidr ranges for private subnets"
  type        = list(string)
  default     = ["172.16.2.0/25", "172.16.2.128/25", "172.16.3.128/25"]
}

variable "app_subnet_cidr_block" {
  description = "Selected Cidr ranges for private subnets"
  type        = list(string)
  default     = ["172.16.4.0/24", "172.16.5.0/24", "172.16.6.0/24"]
}

variable "private_subnet_cidr_block" {
  description = "Selected Cidr ranges for private subnets"
  type        = list(string)
  default     = ["172.16.0.0/25", "172.16.0.128/25", "172.16.1.128/25"]
}

variable "ALB_subnet_cidr_block" {
  description = "Selected Cidr ranges for public subnets"
  type        = list(string)
  default     = ["172.16.8.0/26", "172.16.8.64/26", "172.16.8.128/26"]
}
variable "vpc_instance_tenancy" {

  description = "VPC instance tenancy"
  type        = string
  default     = "default"

}

variable "enable_dns_support" {

  description = "dns support setting"
  type        = bool
  default     = "true"
}

variable "enable_dns_hostnames" {

  description = "dns host name support setting"
  type        = bool
  default     = "false"
}

#Nat Gateway Elastic IP

variable "Elastic_ip_name" {
  type    = string
  default = "Public_Nat_Gw"


}

#NAT Gateway

variable "NGW-01" {
  type    = bool
  default = "true"

}

# Route Table CIDR block

variable "Cidr" {
  type    = string
  default = "0.0.0.0/0"

}
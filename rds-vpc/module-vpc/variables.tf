variable "cidr_block_vpc" {
  description = "CIDR block for VPC"
  default     = "172.100.0.0/16"
  type        = string
}

variable "kthamel-rds-subnet-0" {
  description = "CIDR block for subnet 0"
  default     = "172.100.0.0/24"
  type        = string
}

variable "kthamel-rds-subnet-1" {
  description = "CIDR block for subnet 1"
  default     = "172.100.1.0/24"
  type        = string
}

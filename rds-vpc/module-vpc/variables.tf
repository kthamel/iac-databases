variable "cidr_block_vpc" {
  description = "Allocated Storage for Database"
  default     = "172.16.0.0/16"
  type        = string
}

variable "kthamel-rds-subnet-0" {
  description = "Allocated Storage for Database"
  default     = "172.16.1.0/24"
  type        = string
}

variable "kthamel-rds-subnet-1" {
  description = "Allocated Storage for Database"
  default     = "172.16.2.0/24"
  type        = string
}

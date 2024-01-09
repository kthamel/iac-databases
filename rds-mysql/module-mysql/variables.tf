variable "allocated_storage" {
  description = "Allocated Storage for Database"
  default     = 10
  type        = number
}

variable "instance_class" {
  description = "Instance Class of Database"
  default     = "db.t3.micro"
  type        = string
}

variable "engine" {
  description = "Engine of Database"
  default     = "mysql"
  type        = string
}

variable "engine_version" {
  description = "Engine Version of Database"
  default     = "5.7"
  type        = string
}

variable "parameter_group_name" {
  description = "Parameter Group Name of Database"
  default     = "default.mysql5.7"
  type        = string
}

variable "db_subnet_group_name" {
  description = "Subnet IDs for Database"
  default = ""
  type = string
}

variable "vpc_security_group_ids" {
  description = "Security Group IDs for Database"
  default = {
    "mysql-sg" = [""]
  }
  type = map(list(string))
}

variable "subnet_ids" {
  description = "Security Group IDs for Database"
  default     = ""
  type        = string
}

variable "availability_zone" {
  description = "AZ for for Database"
  default     = "us-east-1a"
  type        = string
}

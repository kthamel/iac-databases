locals {
  Name    = "RDS-Resource"
  Project = "DevOps-RDS"
}

locals {
  common_tags = {
    Name           = local.Name
    DevOps_Project = local.Project
  }
}
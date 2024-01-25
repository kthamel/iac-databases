locals {
  Name    = "Psql-On-RDS"
  Project = "DevOps-Psql"
}

locals {
  common_tags = {
    Name           = local.Name
    DevOps_Project = local.Project
  }
}

locals {
  Name    = "IAC Terraform"
  Project = "Project Terraform"
}

locals {
  common_tags = {
    DevOps_Name    = local.Name
    DevOps_Project = local.Project
  }
}
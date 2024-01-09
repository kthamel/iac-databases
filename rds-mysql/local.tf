terraform {
  backend "s3" {
    bucket = "kthamel-rds-databases"
    key    = "kthamel-postgres"
    region = "us-east-1"
  }
}
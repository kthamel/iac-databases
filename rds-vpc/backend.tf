terraform {
  backend "s3" {
    bucket = "kthamel-rds-databases"
    key    = "demo-vpc-tfstate"
    region = "us-east-1"
  }
}
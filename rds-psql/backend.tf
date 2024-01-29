terraform {
  backend "s3" {
    bucket = "kthamel-rds-postgres"
    key    = "demo-vpc-tfstate"
    region = "us-east-1"
  }
}

terraform {
  backend "s3" {
    bucket = "kthamel-vault-vpc"
    key    = "demo-vpc-tfstate"
    region = "us-east-1"
  }
}
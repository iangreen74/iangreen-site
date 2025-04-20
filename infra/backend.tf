terraform {
  backend "s3" {
    bucket         = "iangreen-terraform-state"
    key            = "site/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

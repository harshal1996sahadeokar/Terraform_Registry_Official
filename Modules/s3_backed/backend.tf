terraform {
  backend "s3" {
    bucket         = "production_server" 
    key            = "production/terraform.tfstate"
    region         = "var.region"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

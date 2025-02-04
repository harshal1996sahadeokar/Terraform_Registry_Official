provider "aws" {
  region = "var.region"
}

resource "aws_instance" "example" {
  instance_type = "var.instance_type"
  ami = "var.ami"
  subnet_id = ""var.subnet_id"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my_backed_buket" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

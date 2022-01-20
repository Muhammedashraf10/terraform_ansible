terraform {
  backend "s3" {
    bucket = "testmic1234"
    key    = "terraform.tfstat"
    region = "us-west-2"
  }
}

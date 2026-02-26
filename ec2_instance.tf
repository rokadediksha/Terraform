provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::487834054746:role/terraform-role"
  }
}
resource "aws_instance" "first" {
    ami="ami-0f3caa1cf4417e51b"
    instance_type = "t3.micro"
    count = 2
}
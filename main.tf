provider "aws" {
    region = var.region_name
  
}
resource "aws_instance" "ec2-instance" {
    ami =var.image
    instance_type = var.instance_type
    vpc_security_group_ids = var.security_group
    key_name = var.key_name
  
}

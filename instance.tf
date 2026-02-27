provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "ec" {
    ami ="ami-0f3caa1cf4417e51b"
    instance_type = "t3.micro"
    count = 3
    tags = {
      Name="linux${count.index+1}"
    
  
}

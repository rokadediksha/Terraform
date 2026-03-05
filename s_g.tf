provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "ec2" {
    ami = "ami-0f3caa1cf4417e51b"
    instance_type = "t3.micro"
    security_groups = [aws_security_group.ec2_sg ]
    tags = {
      Name="ec2"
    }

  
}
resource "aws_security_group" "ec2_sg" {
    ingress {
        description = "ssh allow"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
         }
    egress {
        description = "all allow"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    
  
}
    provider "aws" {
      region = "us-east-1"  
    }
    
    resource "aws_key_pair" "tf-key-pair" {
    
        key_name = "my-tf-key"
    
        public_key = tls_private_key.rsa.public_key_openssh
    
    }
    
    resource "tls_private_key" "rsa" {
    
        algorithm = "RSA"
    
        rsa_bits  = 4096
    
    }
    
    resource "local_file" "tf-key" {
    
       content  = tls_private_key.rsa.private_key_pem
    
       filename = "my-tf-key"
    
    }


  resource "aws_instance" "my_instance" {
    ami           = "ami-0f3caa1cf4417e51b"
    instance_type = "t3.micro"
    key_name      = aws_key_pair.tf-key-pair.key_name  
  
    tags = {
      Name = "MyTerraformEC2"
    }
  }
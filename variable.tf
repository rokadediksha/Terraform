variable "region_name" {
    default = "us-east-1"
}
variable "instance_type" {
    default = "t3.micro"
  
}
variable "image" {
  default ="ami-0f3caa1cf4417e51b"
}
variable "swcurity_group" {
  default = "sg-0b78b59744640c03c"
}
variable "key_name" {
    default = "terraform"
  
}
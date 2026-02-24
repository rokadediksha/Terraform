resource "local_file" "foo" {
  content  = "Welcome To Terraform...!"
  filename = "/root/file1"
}
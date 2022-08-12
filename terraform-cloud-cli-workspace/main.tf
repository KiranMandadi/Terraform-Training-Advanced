resource "aws_instance" "myec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t1.micro"

  tags = {
    Name = "Private EC2 (Terraform-Cloud-Cli)"
  }
}
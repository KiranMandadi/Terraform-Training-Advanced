resource "aws_instance" "private-ec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t1.micro"
  count         = 2
}
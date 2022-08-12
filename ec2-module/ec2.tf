variable "instance_type" {
  type = string
  default = "t1.micro"
}

resource "aws_instance" "myec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type
}
variable "instance_type" {
  type = map(any)

  default = {
    dev  = "t1.micro"
    prod = "t2.micro"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "Workspace Instance - ${terraform.workspace}"
  }
}
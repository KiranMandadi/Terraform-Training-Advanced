variable "is-non-prod" {
  type    = bool
  default = true
}

resource "aws_instance" "non-prod-instance" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t1.micro"

  count = var.is-non-prod ? 1 : 0
}

resource "aws_instance" "prod-instance" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  count = var.is-non-prod ? 0 : 1
}
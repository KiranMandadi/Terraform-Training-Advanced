resource "aws_instance" "myec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "Sample EC2 Instance (Implicit-Dependency)"
  }
}

resource "aws_eip" "myeip" {
  instance = aws_instance.myec2.id

  tags = {
    Name = "Sample Elastic IP (Implicit-Dependency)"
  }
}
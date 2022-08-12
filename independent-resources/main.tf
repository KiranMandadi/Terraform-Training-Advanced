resource "aws_instance" "myec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "Private EC2 Instance (Independent-Resources)"
  }
}

resource "aws_eip" "myeip" {
  tags = {
    Name = "Elastic IP (Independent-Resources)"
  }
}
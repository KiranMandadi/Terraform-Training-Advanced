resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "Web EC2 Instance"
  }

  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }
}
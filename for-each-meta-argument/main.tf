variable "server_names" {
  type    = list(any)
  default = ["vm1", "vm2", "vm3"]
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  for_each      = toset(var.server_names)

  tags = {
    Name = each.value
    Env  = "Dev"
  }
}

output "private_ip" {
  value = values(aws_instance.ec2-instance)[*].private_ip
}
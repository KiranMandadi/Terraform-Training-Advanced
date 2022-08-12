variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8300, 8301, 8400, 9300, 9400]
}

resource "aws_security_group" "dynamic-sg" {
  name        = "dynamic-sg"
  description = "Terraform Managed"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
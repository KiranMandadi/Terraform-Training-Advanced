module "sgmodule" {
  source = "../sg-module"
}

resource "aws_instance" "web" {
  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]

  tags = {
    Name = "SG (Module Consumer)"
  }
}

output "sg_id_output" {
  value = module.sgmodule.sg_id
}

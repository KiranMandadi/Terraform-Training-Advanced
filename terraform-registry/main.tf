module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.1"

  name          = "Terraform Registry EC2 Instance"
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
}
// AWS EC2 Instance
resource "aws_instance" "myec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  depends_on    = [aws_s3_bucket.mys3] // Multiple dependencies allowed

  tags = {
    Name = "EC2 Instance (Explicit-Dependency)"
  }
}

// AWS S3 bucket
resource "aws_s3_bucket" "mys3" {
  bucket = "kiran-s3-bucket-6"
  tags = {
    Description = "S3 bucket created by Terraform"
  }
}
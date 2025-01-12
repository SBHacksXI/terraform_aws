provider "aws" {
  region = "us-west-1" # Change this to your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "chubber-bucket" # Replace with your desired unique bucket name
  acl    = "private"                 # Access control list (e.g., private, public-read)

  tags = {
    Name        = "Example S3 Bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}

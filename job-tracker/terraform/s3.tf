# Placeholder Terraform for S3 static hosting
resource "aws_s3_bucket" "frontend" {
  bucket = "job-tracker-frontend"
  acl    = "public-read"
}

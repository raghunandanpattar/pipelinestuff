provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTWADTJT7M"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_first_bucket" {
    bucket = "my-first-bucket-in28mins-123456789"
}
resource "aws_iam_user" "first_iam_user" {
    name="first_iam_user_raghu_updated1234"
  
}

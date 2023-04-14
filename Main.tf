provider "aws"{
    region ="us-east-1"
}
resource "aws_s3_bucket" "my_first_bucket" {
    bucket = "my-first-bucket-in28mins-123456789"
}
resource "aws_iam_user" "first_iam_user" {
    name="first_iam_user_raghu_updated1234"
  
}

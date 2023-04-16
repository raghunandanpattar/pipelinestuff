provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTY4WVDZGC"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_first_bucket" {
    bucket = "my-first-bucket-in28mins-123456789"
}
resource "aws_iam_user" "first_iam_user" {
    name="first_iam_user_raghu_updated1234"
  
}

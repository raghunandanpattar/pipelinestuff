provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTY4WVDZGC"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_first_bucket" {
    bucket = "my-first-bucket-in28mins-123456789"
}


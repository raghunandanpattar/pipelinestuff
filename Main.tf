provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTXQXVMQ46"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_final_bucket" {
    bucket = "final-bucket89511"
}






provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTQGV3EERE"
    secret_key ="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"
}
#resource "aws_s3_bucket" "my_final_bucket-1" {
 #   bucket = "final-bucket89511-1"
#}




resource "aws_instance" "task-instance11" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro" 
  key_name               = "default-ec2"
    
  tags ={
      Name = "pipeline_created_instance" 
  }
  
}

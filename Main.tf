provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTVWC366OM"
    secret_key ="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"
}
#resource "aws_s3_bucket" "my_final_bucket-1" {
 #   bucket = "final-bucket89511-1"
#}




resource "aws_instance" "task-instance1-1" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro" 
  key_name               = "default-ec2"
    
  tags ={
      Name = "pipeline_created_instance-1" 
  }
  
}

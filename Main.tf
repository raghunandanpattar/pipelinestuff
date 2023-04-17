provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTTN4CCEFM"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_final_bucket" {
    bucket = "final-bucket89511"
}





#resource "aws_instance" "task-instance" {
 # ami           = "ami-06e46074ae430fba6"
  #instance_type = "t2.micro"
  #key_name      = "default-ec2"
  #vpc_security_group_ids = [aws_security_group.task-sg.id]

#}


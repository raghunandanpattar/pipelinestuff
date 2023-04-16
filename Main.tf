provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTY4WVDZGC"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_first_bucket" {
    bucket = "my-first-bucket-in28mins-123456789"
}



resource "aws_security_group" "task-sg" {
  name="task-sg"
  vpc_id = "vpc-05c8d369712b48906"

  ingress{
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress{
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

#resource "aws_instance" "task-instance" {
 # ami           = "ami-06e46074ae430fba6"
  #instance_type = "t2.micro"
  #key_name      = "default-ec2"
  #vpc_security_group_ids = [aws_security_group.task-sg.id]

#}


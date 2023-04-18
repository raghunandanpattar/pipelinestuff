provider "aws"{
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTY4WVDZGC"
    secret_key ="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"
}
resource "aws_s3_bucket" "my_final_bucket" {
    bucket = "final-bucket89511"
}



resource "aws_security_group" "raghunandan_sg" {
  name   = "raghunandan_sg"
  vpc_id = "vpc-05c8d369712b48906"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    "name" = "raghus_sg"
  }

}
resource "aws_instance" "task-instance" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro" 
  key_name               = "default-ec2"
  vpc_security_group_ids = [aws_security_group.raghunandan_sg.id]
  subnet_id = "subnet-0a97bed60f00da0be"
    
  tags ={
      Name = "pipeline_created_instance" 
  }
  
}

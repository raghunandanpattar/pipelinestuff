provider "aws"{
    region ="us-east-1"
    access_key =""
    secret_key =""
}
#resource "aws_s3_bucket" "my_final_bucket-1" {
 #   bucket = "final-bucket89511-1"
#}



resource "aws_security_group" "raghunandan_final-sg" {
  name   = "raghunandan_final-sg"
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

resource "aws_instance" "task-instance1-1" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro" 
  key_name               = "default-ec2"
    
  tags ={
      Name = "pipeline_created_instance-1" 
  }
  
}

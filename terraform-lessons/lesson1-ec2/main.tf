terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.69.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# resource "aws_instance" "tf-ec2" {
#     ami = "ami-061ac2e015473fbe2"
#     instance_type = "t2.micro"
#     security_groups = [aws_security_group.ssh_http.name]
#     user_data = file("user_data.sh")
# }


# resource "aws_security_group" "ssh_http" {
#   name        = "ssh_http"
#   description = "Allow SSH and HTTP"

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

resource "aws_s3_bucket" "b" {
  bucket = "my-tf8199-test2-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}





# resource "aws_lb" "test" {
#   name               = "test-lb-tf"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.lb_sg.id]
#   subnets            = aws_subnet.public.*.id

#   enable_deletion_protection = true

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.bucket
#     prefix  = "test-lb"
#     enabled = true
#   }

#   tags = {
#     Environment = "production"
#   }
# }


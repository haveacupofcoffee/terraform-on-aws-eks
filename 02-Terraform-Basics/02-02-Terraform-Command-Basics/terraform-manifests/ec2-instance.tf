# Terraform Settings Block
# variable "tags" {
#   sonatype-group = "support"
#   owner = "dqiu@sonatype.com"
#   expiration = "never"
#   environment = "test"
#   description = "delete after test"
# } 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.31" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  # profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  access_key = "ASIAWSFUDZ62UCUHF43Q"
  secret_key = "0FMXTsZOUxyjLRT2ca0jMRSZgYUFwyez6c1ZgZro"
  region  = "ca-central-1"
  token = "IQoJb3JpZ2luX2VjELP//////////wEaCXVzLWVhc3QtMSJGMEQCIA1Wg4lOGfjhoSM9075XFAfRl3VLlCczIz/f6cIuVNEBAiBBHbXTKpqtobQxGjy9wj8A2iDncHtWpGKRNG6YZgNSnirvAQhsEAMaDDQ1MTM0OTMwMzIyMSIMTvEfIxD368vdRBvrKswBqoElHGoHy4/+pS9AeoGqcc8YrbGnl8i4Xn+XhbppQ7rphisa7aVsPiTvYD4NMqnpfQwLtX18dBamZYKRHq7oUPJfvW4iz896mgeanoQLQUL5TtXklavb9zbHwG+j9KQstpCt1jQVBWYZnRgh5asXrquFib+2fJ0UKqRFSkYqCw/GyrdbrqmsmYkcIIFgVCfJQtkDNzMyGAD11gPICglhBcXIikcCFKIE9BJZmN5U8s70A6ZgB/161hxryS++yD2uylyZPA3rSP7eg9W0MM/wwa0GOpkB92e0K38LLliGYQyWQStDw5ZG7uvppzfLE5HFesnV+/ThPsAHsxwg2ZP4e6iwH18i+HTi7G9d7hYtEAXdsRw6SK+vLV6L8QwnIQ04cr/IexN924Bq4lTaiQsjEwrPqQ+A4IOw8JkfbHvQhk0eFf2TIm97gepZd+rRPBanDsblbImCr3M9hnpFFBkNKDuP455crWyh59fGdWek"
  assume_role {
    role_arn = "arn:aws:iam::497919687739:role/admin"
  }
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0c00c714c7f84b49d" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
  subnet_id = "subnet-0fddbbc6e445460ac"
  tags = {
    sonatype-group = "support"
  }
}

# resource "aws_ec2_tag" "ec2demo" {
#   key         = "Name"
#   value       = "Hello World"
# }

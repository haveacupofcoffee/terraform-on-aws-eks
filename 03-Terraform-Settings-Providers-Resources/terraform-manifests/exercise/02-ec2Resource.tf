resource "aws_instance" "ec2demo" {
  ami           = "ami-0c00c714c7f84b49d"
  instance_type = "t2.micro"
  subnet_id = "subnet-0fddbbc6e445460ac"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
      "owner" = "dqiu@sonatype.com"
      "sonatype-group" = "support"
  }
}
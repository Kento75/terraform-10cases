resource "aws_instance" "firstdemo" {
  count = 3

  # Tokyo region Amazon Linux2 latest
  ami = "ami-0cc75a8978fbbc969"

  instance_type = "t2.micro"

  tags = {
    Name = "threedemoinstance"
  }
}

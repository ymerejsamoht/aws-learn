resource "aws_instance" "example" {
  ami           = "ami-7f43f307"
  instance_type = "t2.micro"
}

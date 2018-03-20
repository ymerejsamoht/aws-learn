resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name = "${var.AWS_SSH_KEY_PAIR}"

  provisioner "file" {
    source = "/tmp/testfile.txt"
    destination = "/tmp/testfile.txt"
    connection {
      user = "ec2-user"
      private_key = "${file("${var.AWS_SSH_KEY_PEM}")}"
    }
  }
}

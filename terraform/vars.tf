variable "AWS_SSH_KEY_PAIR" {}
variable "AWS_SSH_KEY_PEM" {}
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-west-2"
}
variable "AMIS" {
  type = "map"
  default = {
    us-west-2 = "ami-7f43f307"
  }
}


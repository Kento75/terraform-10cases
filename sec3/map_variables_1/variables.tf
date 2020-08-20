variable "amitype" {
  # # Tokyo region Amazon Linux2 latest
  default = "ami-0cc75a8978fbbc969"
}

variable "env" {
}

variable "instance_type" {
  type = map(string)

  default = {
    dev  = "t2.micro"
    test = "t2.medium"
  }
}



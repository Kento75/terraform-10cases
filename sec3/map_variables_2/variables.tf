variable "env" {
}

variable "region" {
  default = "ap-northeast-1"
}

variable "ami_type" {
  type = map(string)
  default = {
    ap-northeast-1 = "ami-0cc75a8978fbbc969"
    us-east-2      = "ami-922914f7"
  }
}

variable "instance_type" {
  type = map(string)
  default = {
    dev  = "t2.micro"
    test = "t2.medium"
  }
}

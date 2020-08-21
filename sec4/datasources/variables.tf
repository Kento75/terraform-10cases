### 環境設定
variable "env" {
  default = "dev"
}

variable "region" {
  default = "ap-northeast-1"
}



### EC2設定
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

variable "sgs" {
  type    = list(string)
  default = ["sg-xxxxxx", "sg-zzzzzz"]
}



### RDS 設定
variable "CLUSTER_IDENTIFIER" {}
variable "DATABASE_NAME" {}
variable "MASTER_USERNAME" {}
variable "MASTER_PASSWORD" {}
variable "VPC_SECURITY_GROUP_IDS" {}
variable "DB_SUBNET_GROUP_NAME" {}
variable "ENVIRONMENT_NAME" {}
variable "MANAGER" {}

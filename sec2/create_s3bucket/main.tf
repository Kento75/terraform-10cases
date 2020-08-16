resource "aws_s3_bucket" "terraform-s3" {
  bucket = "terraform-s3-testing-kento"

  # バージョニング有効
  versioning {
    enabled = true
  }

  # リソース削除の禁止（Terraform上での削除は禁止。awsコンソール等から削除はできる。）
  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "S3 Remote store"
  }
}

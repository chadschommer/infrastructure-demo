terraform {
  backend "s3" {
    bucket = "schommerc-terraform-state-dev-global"
    key    = "datacenter/us-east-1"
    region = "us-east-1"
  }
}

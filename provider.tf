provider "aws" {
  region    = var.region 
  allowed_account_ids = [var.aws_id]
}

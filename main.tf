module "glacier-add-read-only-perm" {
  source = "./module/glacier"

  aws_id = var.aws_id
  name_topic = var.name_topic
  name_vault = var.name_vault
  path_policy = "template/policy_user_read_only.tpl"
  tags = var.tags
  region = var.region
}

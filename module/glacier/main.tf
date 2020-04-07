resource "aws_sns_topic" "topic" {
  name = var.name_topic
}

resource "aws_glacier_vault" "vault" {
  name = var.name_vault

  notification {
      sns_topic = aws_sns_topic.topic.arn
      events = ["ArchiveRetrievalCompleted", "InventoryRetrievalCompleted"]
  }

  access_policy = templatefile(var.path_policy, {
    aws_id  = var.aws_id
    name_vault = var.name_vault
    region = var.region
  })

   tags = var.tags
}


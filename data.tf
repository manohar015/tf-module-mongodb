data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "manohar-b50-tf-state-bucket"
    key    = "vpc/${var.ENV}/terrafom.tfstate"
    region = "us-east-1"
  }
}

data "aws_secretsmanager_secret" "secrets" {
  name = "roboshop/secrets"
}

data "aws_secretsmanager_secret_version" "secrets" {
  secret_id = data.aws_secretsmanager_secret.secrets.id
}

# output "example" {
#    value = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCDB_USERNAME"]
# }

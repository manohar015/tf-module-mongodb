data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "manohar-b50-tf-state-bucket"
    key    = "vpc/${var.ENV}/terrafom.tfstate"
    region = "us-east-1"
    access_key = "AKIAYWHE32Q7SPNV4KM5"
    secret_key = "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"
  }
}
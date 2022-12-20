# All the locals will be declared in this file for the ease of readability
locals {
   DNS_NAME =  aws_docdb_cluster.docdb.endpoint
   USERNAME =  jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCDB_USERNAME"]
   PASSWORD =  jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCDB_PASSWORD"]
   
}
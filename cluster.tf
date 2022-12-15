/* resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "roboshop-${var.ENV}"
  engine                  = "docdb"
  master_username         = admin1
  master_password         = local.PASSWORD
# True only during lab, in prod , we will take a snapshot and that time value will be false
  skip_final_snapshot     = true
  db_subnet_group_name    = aws_docdb_subnet_group.docdb.name
  vpc_security_group_ids  = [aws_security_group.allow_docdb.id]
} */

# Creates Subnet Group
resource "aws_docdb_subnet_group" "docdb" {
  name       = "roboshop-mongo-${var.ENV}"
  subnet_ids = data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS

  tags = {
    Name = "My docdb subnet group"
  }
}
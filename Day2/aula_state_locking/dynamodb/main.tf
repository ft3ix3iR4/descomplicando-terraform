resource "aws_dynamodb_table" "dynamodb" {
  name           = "Descomplicando-terraform"
  hash_key       = "LockId"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockId"
    type = "S"
  }
}

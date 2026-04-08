# Define a dynamodb 
resource "aws_dynamodb_table" "example" {
  count        = 1   # This ensures only one table is created
  name         = "CreatedDynamotablebyAjit"
  billing_mode = "PAY_PER_REQUEST"

  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "CreatedDynamotablebyAjit"
    Environment = "Dev"
  }
}
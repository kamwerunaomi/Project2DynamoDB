provider "aws" {
  region  = "us-east-1" 
  access_key = [access_key]
  secret_key = [secret_key]
}

resource "aws_dynamodb_table" "GuestBook2" {
  name         = "GuestBook2"
  attribute {
    name = "email"
    type = "S"
  }
  attribute {
    name = "country"
    type = "S"
  }
  
  hash_key     = "email"
  range_key    = "country"
  billing_mode = "PAY_PER_REQUEST"
}

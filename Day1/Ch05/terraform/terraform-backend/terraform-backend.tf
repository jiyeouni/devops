resource "aws_s3_bucket" "test-s3-tf-state" {

  bucket = "user10-terraform"

  tags = {
    "Name" = "user10-terraform"
  }
  
}

resource "aws_dynamodb_table" "test-ddb-tf-lock" {

  depends_on   = [aws_s3_bucket.test-s3-tf-state]
  name         = "user10-terraform"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = "user10-terraform"
  }

}


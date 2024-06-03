#Create S3 bucket
resource "aws_s3_bucket" "s3bucket" {
  bucket = "terstate-4229"
}

resource "aws_s3_bucket_versioning" "s3ver" {
  bucket = aws_s3_bucket.s3bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.s3bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_object_lock_configuration" "s3objlock" {
  bucket = aws_s3_bucket.s3bucket.id

  depends_on = [aws_s3_bucket_versioning.s3ver]

  rule {
    default_retention {
      mode = "COMPLIANCE"
      years = 100
    }
  }
}

#Create Dynamodb

resource "aws_dynamodb_table" "dynastatelock" {
  name         = "state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
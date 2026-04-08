resource "aws_s3_bucket" "example_bucket_by_ajit" {
  bucket = "examplebucketbyajit"

  tags = {
    Name = "donebyAjitBucket"
  }
}
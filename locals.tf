locals {
  s3_bucket_name          = "ttestingbucket"
  acl                     = "private"
  versioning              = true
  kms_master_key_id       = ""
  sse_algorithm           = "aws:kms"
}
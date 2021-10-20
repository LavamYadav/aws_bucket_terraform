# resource "random_string" "s3" {
#   length = 4
# }

resource "aws_s3_bucket" "aws_bucket" {
   #count = "${length(var.s3_bucket_name)}"
   bucket = "${var.s3_bucket_name}"

   acl = "${var.acl}"
   versioning {
      enabled = "${var.versioning}"
   }
   server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${var.kms_master_key_id}"
        sse_algorithm     = "${var.sse_algorithm}"
      }
    }
  }
  lifecycle_rule {
    id      = "${var.id}"
    enabled = "${var.lifecyclerule}"

    prefix = "${var.prefix}"

    transition {
      days          = "${var.transitiondays_standard}"
      storage_class = "${var.standard_sc}" 
    }

    # transition {
    #   days          = "${var.transitiondays_glacier}"
    #   storage_class = "${var.glacier_sc}"
    # }

    # expiration {
    #   days = "${var.expiration}"
    # }
  }
}
  resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.aws_bucket.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression's result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "MYBUCKETPOLICY"
    Statement = [
      {
        Sid       = "IPAllow"
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          aws_s3_bucket.aws_bucket.arn,
          "${aws_s3_bucket.aws_bucket.arn}/*",
        ]
        Condition = {
          NotIpAddress = {
            "aws:SourceIp" = "171.79.74.97/32"
          }
        }
      },
    ]
  })
}



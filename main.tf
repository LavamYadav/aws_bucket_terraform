

module "bucket1" {
  source = "./s3/"
  s3_bucket_name            = "${local.s3_bucket_name}-hourly"
  acl                       = local.acl
  versioning                = local.versioning
  kms_master_key_id         = local.kms_master_key_id
  sse_algorithm             = local.sse_algorithm
  id                        = var.lifecycle_rule_id_bucket1
  lifecyclerule             = var.lifecyclerule_enable_bucket1
  prefix                    = var.prefix_bucket1
  transitiondays_standard   = var.transitiondays_standard_bucket1
  standard_sc               = "STANDARD_IA"
  # transitiondays_glacier    = "${var.transitiondays_glacier_bucket1}"
  # glacier_sc                = "${var.storageclass2_bucket1}"
  # expiration                = "${var.expiration_days_bucket1}"

}

module "bucket2" {
  source = "./s3/"
  s3_bucket_name            = "${local.s3_bucket_name}-daily"
  acl                       = local.acl
  versioning                = local.versioning
  kms_master_key_id         = local.kms_master_key_id
  sse_algorithm             = local.sse_algorithm
  id                        = var.lifecycle_rule_id_bucket2
  lifecyclerule             = var.lifecyclerule_enable_bucket2
  prefix                    = var.prefix_bucket2
  transitiondays_standard   = var.transitiondays_standard_bucket2
  standard_sc               = "STANDARD_IA"
  # transitiondays_glacier    = "${var.transitiondays_glacier_bucket2}"
  # glacier_sc                = "${var.storageclass2_bucket2}"
  # expiration                = "${var.expiration_days_bucket2}"

}

module "bucket3" {
  source = "./s3/"
  s3_bucket_name            = "${local.s3_bucket_name}-weekly"
  acl                       = local.acl
  versioning                = local.versioning
  kms_master_key_id         = local.kms_master_key_id
  sse_algorithm             = local.sse_algorithm
  id                        = var.lifecycle_rule_id_bucket3
  lifecyclerule             = var.lifecyclerule_enable_bucket3
  prefix                    = "${var.prefix_bucket3}"
  transitiondays_standard   = var.transitiondays_standard_bucket3
  standard_sc               = "STANDARD_IA"
  # transitiondays_glacier    = "${var.transitiondays_glacier_bucket3}"
  # glacier_sc                = "${var.storageclass2_bucket3}"
  # expiration                = "${var.expiration_days_bucket3}"

}
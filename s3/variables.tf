variable "s3_bucket_name" {
   type = string
   default = "terrrbucket"
}

variable "acl" {
    type        = string
    description = "(Optional) The canned ACL to apply. Defaults to private. Conflicts with grant."
    default     = "private"
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}

variable "kms_master_key_id" {
    type        = string
    description = "(optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms."
    default     = "aws/s3"
}

variable "sse_algorithm" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}

variable "id" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}

variable "lifecyclerule" {
    type        = bool
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = false
}

variable "prefix" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}

variable "transitiondays_standard" {
    type        = number
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = 30
}

variable "standard_sc" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}

variable "transitiondays_glacier" {
    type        = number
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = 60
}

variable "glacier_sc" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}

variable "expiration" {
    type        = number
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = 90
}


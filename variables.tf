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

variable "lifecycle_rule_id_bucket1" {
    type        = string
    description = "((Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length."
    default     = "logs"
}

variable "lifecyclerule_enable_bucket1" {
    type        = bool
    description = "Enablemet of configuration of object lifecycle management"
    default     = false
}

variable "prefix_bucket1" {
    type        = string
    description = "(Optional) Object key prefix identifying one or more objects to which the rule applies."
    default     = "logs/"
}

variable "transitiondays_standard_bucket1" {
    type        = number
    description = "(Optional) Specifies the number of days after object creation when the specific rule action takes effect."
    default     = 30
}

variable "storageclass_bucket1" {
    type        = string
    description = "(Optional) The class of storage used to store the object. Can be STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE."
    default     = "STANDARD_IA"
}

variable "transitiondays_glacier_bucket1" {
    type        = number
    description = "(Optional) Specifies the number of days after object creation when the specific rule action takes effect."
    default     = 90
}

variable "storageclass2_bucket1" {
    type        = string
    description = "((Optional) The class of storage used to store the object. Can be STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE."
    default     = "GLACIER"
}

variable "expiration_days_bucket1" {
    type        = number
    description = "(Optional) Specifies a period in the object's expire "
    default     = 300
}

#BUCKET2

variable "lifecycle_rule_id_bucket2" {
    type        = string
    description = "((Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length."
    default     = "logs"
}

variable "lifecyclerule_enable_bucket2" {
    type        = bool
    description = "Enablemet of configuration of object lifecycle management"
    default     = false
}

variable "prefix_bucket2" {
    type        = string
    description = "(Optional) Object key prefix identifying one or more objects to which the rule applies."
    default     = "logs/"
}

variable "transitiondays_standard_bucket2" {
    type        = number
    description = "(Optional) Specifies the number of days after object creation when the specific rule action takes effect."
    default     = 30
}

variable "storageclass_bucket2" {
    type        = string
    description = "(Optional) The class of storage used to store the object. Can be STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE."
    default     = "STANDARD_IA"
}

variable "transitiondays_glacier_bucket2" {
    type        = number
    description = "(Optional) Specifies the number of days after object creation when the specific rule action takes effect."
    default     = 90
}

variable "storageclass2_bucket2" {
    type        = string
    description = "((Optional) The class of storage used to store the object. Can be STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE."
    default     = "GLACIER"
}

variable "expiration_days_bucket2" {
    type        = number
    description = "(Optional) Specifies a period in the object's expire "
    default     = 300
}

#BUCKET3

variable "lifecycle_rule_id_bucket3" {
    type        = string
    description = "((Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length."
    default     = "logs"
}

variable "lifecyclerule_enable_bucket3" {
    type        = bool
    description = "Enablemet of configuration of object lifecycle management"
    default     = false
}

variable "prefix_bucket3" {
    type        = string
    description = "(Optional) Object key prefix identifying one or more objects to which the rule applies."
    default     = "logs/"
}

variable "transitiondays_standard_bucket3" {
    type        = number
    description = "(Optional) Specifies the number of days after object creation when the specific rule action takes effect."
    default     = 30
}

variable "storageclass_bucket3" {
    type        = string
    description = "(Optional) The class of storage used to store the object. Can be STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE."
    default     = "STANDARD_IA"
}

variable "transitiondays_glacier_bucket3" {
    type        = number
    description = "(Optional) Specifies the number of days after object creation when the specific rule action takes effect."
    default     = 90
}

variable "storageclass2_bucket3" {
    type        = string
    description = "((Optional) The class of storage used to store the object. Can be STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE."
    default     = "GLACIER"
}

variable "expiration_days_bucket3" {
    type        = number
    description = "(Optional) Specifies a period in the object's expire "
    default     = 300
}
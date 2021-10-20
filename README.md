## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.63.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket1"></a> [bucket1](#module\_bucket1) | ./s3/ | n/a |
| <a name="module_bucket2"></a> [bucket2](#module\_bucket2) | ./s3/ | n/a |
| <a name="module_bucket3"></a> [bucket3](#module\_bucket3) | ./s3/ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | (Optional) The canned ACL to apply. Defaults to private. Conflicts with grant. | `string` | `"private"` | no |
| <a name="input_expiration_days_bucket1"></a> [expiration\_days\_bucket1](#input\_expiration\_days\_bucket1) | (Optional) Specifies a period in the object's expire | `number` | `300` | no |
| <a name="input_expiration_days_bucket2"></a> [expiration\_days\_bucket2](#input\_expiration\_days\_bucket2) | (Optional) Specifies a period in the object's expire | `number` | `300` | no |
| <a name="input_expiration_days_bucket3"></a> [expiration\_days\_bucket3](#input\_expiration\_days\_bucket3) | (Optional) Specifies a period in the object's expire | `number` | `300` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | (optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse\_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse\_algorithm is aws:kms. | `string` | `"aws/s3"` | no |
| <a name="input_lifecycle_rule_id_bucket1"></a> [lifecycle\_rule\_id\_bucket1](#input\_lifecycle\_rule\_id\_bucket1) | ((Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length. | `string` | `"logs"` | no |
| <a name="input_lifecycle_rule_id_bucket2"></a> [lifecycle\_rule\_id\_bucket2](#input\_lifecycle\_rule\_id\_bucket2) | ((Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length. | `string` | `"logs"` | no |
| <a name="input_lifecycle_rule_id_bucket3"></a> [lifecycle\_rule\_id\_bucket3](#input\_lifecycle\_rule\_id\_bucket3) | ((Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length. | `string` | `"logs"` | no |
| <a name="input_lifecyclerule_enable_bucket1"></a> [lifecyclerule\_enable\_bucket1](#input\_lifecyclerule\_enable\_bucket1) | Enablemet of configuration of object lifecycle management | `bool` | `false` | no |
| <a name="input_lifecyclerule_enable_bucket2"></a> [lifecyclerule\_enable\_bucket2](#input\_lifecyclerule\_enable\_bucket2) | Enablemet of configuration of object lifecycle management | `bool` | `false` | no |
| <a name="input_lifecyclerule_enable_bucket3"></a> [lifecyclerule\_enable\_bucket3](#input\_lifecyclerule\_enable\_bucket3) | Enablemet of configuration of object lifecycle management | `bool` | `false` | no |
| <a name="input_prefix_bucket1"></a> [prefix\_bucket1](#input\_prefix\_bucket1) | (Optional) Object key prefix identifying one or more objects to which the rule applies. | `string` | `"logs/"` | no |
| <a name="input_prefix_bucket2"></a> [prefix\_bucket2](#input\_prefix\_bucket2) | (Optional) Object key prefix identifying one or more objects to which the rule applies. | `string` | `"logs/"` | no |
| <a name="input_prefix_bucket3"></a> [prefix\_bucket3](#input\_prefix\_bucket3) | (Optional) Object key prefix identifying one or more objects to which the rule applies. | `string` | `"logs/"` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | n/a | `string` | `"terrrbucket"` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"aws:kms"` | no |
| <a name="input_storageclass2_bucket1"></a> [storageclass2\_bucket1](#input\_storageclass2\_bucket1) | ((Optional) The class of storage used to store the object. Can be STANDARD, REDUCED\_REDUNDANCY, STANDARD\_IA, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, or DEEP\_ARCHIVE. | `string` | `"GLACIER"` | no |
| <a name="input_storageclass2_bucket2"></a> [storageclass2\_bucket2](#input\_storageclass2\_bucket2) | ((Optional) The class of storage used to store the object. Can be STANDARD, REDUCED\_REDUNDANCY, STANDARD\_IA, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, or DEEP\_ARCHIVE. | `string` | `"GLACIER"` | no |
| <a name="input_storageclass2_bucket3"></a> [storageclass2\_bucket3](#input\_storageclass2\_bucket3) | ((Optional) The class of storage used to store the object. Can be STANDARD, REDUCED\_REDUNDANCY, STANDARD\_IA, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, or DEEP\_ARCHIVE. | `string` | `"GLACIER"` | no |
| <a name="input_storageclass_bucket1"></a> [storageclass\_bucket1](#input\_storageclass\_bucket1) | (Optional) The class of storage used to store the object. Can be STANDARD, REDUCED\_REDUNDANCY, STANDARD\_IA, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, or DEEP\_ARCHIVE. | `string` | `"STANDARD_IA"` | no |
| <a name="input_storageclass_bucket2"></a> [storageclass\_bucket2](#input\_storageclass\_bucket2) | (Optional) The class of storage used to store the object. Can be STANDARD, REDUCED\_REDUNDANCY, STANDARD\_IA, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, or DEEP\_ARCHIVE. | `string` | `"STANDARD_IA"` | no |
| <a name="input_storageclass_bucket3"></a> [storageclass\_bucket3](#input\_storageclass\_bucket3) | (Optional) The class of storage used to store the object. Can be STANDARD, REDUCED\_REDUNDANCY, STANDARD\_IA, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, or DEEP\_ARCHIVE. | `string` | `"STANDARD_IA"` | no |
| <a name="input_transitiondays_glacier_bucket1"></a> [transitiondays\_glacier\_bucket1](#input\_transitiondays\_glacier\_bucket1) | (Optional) Specifies the number of days after object creation when the specific rule action takes effect. | `number` | `90` | no |
| <a name="input_transitiondays_glacier_bucket2"></a> [transitiondays\_glacier\_bucket2](#input\_transitiondays\_glacier\_bucket2) | (Optional) Specifies the number of days after object creation when the specific rule action takes effect. | `number` | `90` | no |
| <a name="input_transitiondays_glacier_bucket3"></a> [transitiondays\_glacier\_bucket3](#input\_transitiondays\_glacier\_bucket3) | (Optional) Specifies the number of days after object creation when the specific rule action takes effect. | `number` | `90` | no |
| <a name="input_transitiondays_standard_bucket1"></a> [transitiondays\_standard\_bucket1](#input\_transitiondays\_standard\_bucket1) | (Optional) Specifies the number of days after object creation when the specific rule action takes effect. | `number` | `30` | no |
| <a name="input_transitiondays_standard_bucket2"></a> [transitiondays\_standard\_bucket2](#input\_transitiondays\_standard\_bucket2) | (Optional) Specifies the number of days after object creation when the specific rule action takes effect. | `number` | `30` | no |
| <a name="input_transitiondays_standard_bucket3"></a> [transitiondays\_standard\_bucket3](#input\_transitiondays\_standard\_bucket3) | (Optional) Specifies the number of days after object creation when the specific rule action takes effect. | `number` | `30` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | (Optional) A state of versioning. | `bool` | `true` | no |

## Outputs

No outputs.

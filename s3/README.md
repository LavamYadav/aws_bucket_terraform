## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.aws_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | (Optional) The canned ACL to apply. Defaults to private. Conflicts with grant. | `string` | `"private"` | no |
| <a name="input_expiration"></a> [expiration](#input\_expiration) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `number` | `90` | no |
| <a name="input_glacier_sc"></a> [glacier\_sc](#input\_glacier\_sc) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"aws:kms"` | no |
| <a name="input_id"></a> [id](#input\_id) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"aws:kms"` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | (optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse\_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse\_algorithm is aws:kms. | `string` | `"aws/s3"` | no |
| <a name="input_lifecyclerule"></a> [lifecyclerule](#input\_lifecyclerule) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `bool` | `false` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"aws:kms"` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | n/a | `string` | `"terrrbucket"` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"aws:kms"` | no |
| <a name="input_standard_sc"></a> [standard\_sc](#input\_standard\_sc) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"aws:kms"` | no |
| <a name="input_transitiondays_glacier"></a> [transitiondays\_glacier](#input\_transitiondays\_glacier) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `number` | `60` | no |
| <a name="input_transitiondays_standard"></a> [transitiondays\_standard](#input\_transitiondays\_standard) | (required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `number` | `30` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | (Optional) A state of versioning. | `bool` | `true` | no |

## Outputs

No outputs.

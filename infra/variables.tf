variable "domain_name" {
  description = "The domain name for the personal site"
  type        = string
  default     = "iangreen.io"
}

variable "region" {
  description = "Primary AWS region"
  type        = string
  default     = "us-west-2"
}

variable "acm_region" {
  description = "ACM certificate region (must be us-east-1 for CloudFront)"
  type        = string
  default     = "us-east-1"
}

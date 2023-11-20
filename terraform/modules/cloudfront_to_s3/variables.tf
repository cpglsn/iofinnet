variable "region" {
  type        = string
  description = "The AWS Region to use"
  default     = "eu-west-1"
}

variable "env_name" {
  description = "the environment you want to deploy must be dev, prod or staging"
  type        = string
  default     = "dev"

  validation {
    condition     = var.env_name == "dev" || var.env_name == "prod" || var.env_name == "staging"
    error_message = "Valid values are development, production or staging"
  }
}

variable "cloudfront_to_s3_map" {
  type        = map(string)
  description = "The key->value combo of the url and respective bucket"
  default     = {}
}

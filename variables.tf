variable "environment" {
  description = "Deployment Environment"
  type        = string
  default     = "dev"
}

variable "dbpassword" {
  description = "DB Password"
  type        = string
  sensitive   = true
}

output "environment_size" {
  description = "Environment details output"
  value       = var.environment == "production" ? "Large" : "small"
}

output "files" {
  description = "reads from data"
  value       = data.local_file.devops_config.content
}

output "application_file_details" {
  description = "reads from modules output"
  value       = module.application.application_file
}



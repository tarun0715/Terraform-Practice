terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "devops_demo" {
  filename = "devops.txt"
  content  = "${local.project-name} - ${var.environment}"
}

resource "local_file" "deployment" {
  filename = "${path.module}/deployment-info.txt"
  content  = "${var.environment}\n Main: ${local_file.devops_demo.filename}"
}

resource "local_file" "environment_file" {
  for_each = toset(["dev", "production", "Staging"])
  filename = "${path.module}/deployment-${each.key}.txt"
  content  = "Environment Variable ${each.key}: ${var.environment}"
}

resource "local_file" "secret_key" {
  filename = "${path.module}/secret.txt"
  content  = "DB Password: ${var.dbpassword}"
}

module "application" {
  source = "./modules/application"
}

terraform {
  backend "local" {
    path = "/var/lib/jenkins/terraform-state/terraform.tfstate"
  }
}

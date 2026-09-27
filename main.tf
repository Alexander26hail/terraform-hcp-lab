terraform {
  required_providers {
    random = { source = "hashicorp/random" }
  }
}

variable "environment" {
  type    = string
  default = "staging"
}

resource "random_pet" "app" {
  length = 3
}

output "app_name" {
  value = "${var.environment}-${random_pet.app.id}"
}
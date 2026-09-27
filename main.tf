terraform {
  required_providers {
    random = { source = "hashicorp/random" }
  }
}

variable "environment" {
  type    = string
  default = "dev"
}

resource "random_pet" "app" {
  length = 2
}

output "app_name" {
  value = "${var.environment}-${random_pet.app.id}"
}
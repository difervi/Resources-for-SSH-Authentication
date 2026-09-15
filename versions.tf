terraform {
  required_version = ">= 1.5.7"
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.7.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.0"
    }
  }
}

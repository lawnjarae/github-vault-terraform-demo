terraform {
  cloud {
    organization = "hc-field-technology-office"

    workspaces {
      name = "github-demo"
    }
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
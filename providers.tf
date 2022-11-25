# Provider implement every resource type 

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      #if the version not provided the  terraform in downloading most recent version
      version = "4.43.0"
    }
  }
}
# Terraform download the provider plugin in the root configuration when the provider is declared.
provider "google" {
  #configuration oprions
  credentials = file("terra.json")
  project     = "titanium-acumen-367712"
  region      = "us-central1"
  zone        = "us-central1-c"
}

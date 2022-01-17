terraform {
  required_version = ">= 0.15.0"
  required_provider {
  google = {
     source = "hashicorp/google"
     version = "~> 3.43.0"
     }
  }
}

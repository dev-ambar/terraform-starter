terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.30.0"
    }
  }
}

provider "google" {
  
  project = "learning-a-terraform"
  region = "us-central1"
  zone = "us-central1-a"
}

resource google_storage_bucket "gsb" {

    name = "bucket-from-terraform_script-up"
    location ="US"

}
terraform {
  backend "gcs" {
    bucket  = var.backend_bucket
    prefix  = var.backend_prefix
  }
}

provider "google" {
  credentials = file("account.json")
  project     = var.project_id
  region      = var.region
}

module "cloudrun" {
  source             = "./modules/cloudrun"
  service_name       = var.service_name
  project_id         = var.project_id
  location           = var.region
  url                = var.url
  container_location = var.container_location

}

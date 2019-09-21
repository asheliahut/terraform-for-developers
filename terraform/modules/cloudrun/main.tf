resource "google_cloud_run_service" "default" {
  name     = var.service_name
  location = var.location

  metadata {
    namespace = var.project_id
  }

  spec {
    containers {
      image = var.container_location
    }
  }
}

# The Service is ready to be used when the "Ready" condition is True
# Due to Terraform and API limitations this is best accessed through a local variable
locals {
  cloud_run_status = {
    for cond in google_cloud_run_service.default.status[0].conditions : cond.type => cond.status
  }
}

resource "google_cloud_run_domain_mapping" "default" {
location = var.location
name = var.url

  metadata {
    namespace = var.project_id
  }

  spec {
    route_name = google_cloud_run_service.default.name
  }
}

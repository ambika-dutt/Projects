resource "google_cloud_run_service" "python_service" {
  name     = "hello-python"
  location = var.region

  template {
    spec {
      containers {
        image = var.image_url
        ports {
          container_port = 8080
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "invoker" {
  location    = google_cloud_run_service.python_service.location
  service     = google_cloud_run_service.python_service.name
  role        = "roles/run.invoker"
  member      = "allUsers"
}

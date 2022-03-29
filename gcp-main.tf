resource "google_app_engine_application" "app" {
  project     = "devoplab"
  location_id = "us-central"
}

resource "google_artifact_registry_repository" "registry-lab" {
  provider = google-beta

  location = "us-central1"
  repository_id = "labdevops"
  description = "Imagens Docker"
  format = "DOCKER"
}
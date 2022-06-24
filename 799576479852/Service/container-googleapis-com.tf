resource "google_project_service" "container_googleapis_com" {
  project = "799576479852"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 799576479852/container.googleapis.com

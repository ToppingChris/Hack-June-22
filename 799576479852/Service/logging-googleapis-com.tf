resource "google_project_service" "logging_googleapis_com" {
  project = "799576479852"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 799576479852/logging.googleapis.com

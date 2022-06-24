resource "google_project_service" "servicemanagement_googleapis_com" {
  project = "799576479852"
  service = "servicemanagement.googleapis.com"
}
# terraform import google_project_service.servicemanagement_googleapis_com 799576479852/servicemanagement.googleapis.com

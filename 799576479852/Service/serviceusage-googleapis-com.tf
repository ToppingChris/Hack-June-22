resource "google_project_service" "serviceusage_googleapis_com" {
  project = "799576479852"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 799576479852/serviceusage.googleapis.com

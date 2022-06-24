resource "google_project_service" "monitoring_googleapis_com" {
  project = "799576479852"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 799576479852/monitoring.googleapis.com

resource "google_project_service" "autoscaling_googleapis_com" {
  project = "799576479852"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 799576479852/autoscaling.googleapis.com

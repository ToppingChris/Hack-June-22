resource "google_project_service" "compute_googleapis_com" {
  project = "799576479852"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 799576479852/compute.googleapis.com

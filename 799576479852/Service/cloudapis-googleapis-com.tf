resource "google_project_service" "cloudapis_googleapis_com" {
  project = "799576479852"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 799576479852/cloudapis.googleapis.com

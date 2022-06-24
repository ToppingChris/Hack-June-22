resource "google_project_service" "containerregistry_googleapis_com" {
  project = "799576479852"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 799576479852/containerregistry.googleapis.com

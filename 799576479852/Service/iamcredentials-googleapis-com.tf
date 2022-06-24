resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "799576479852"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 799576479852/iamcredentials.googleapis.com

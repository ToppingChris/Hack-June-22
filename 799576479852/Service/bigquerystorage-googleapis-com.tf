resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "799576479852"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 799576479852/bigquerystorage.googleapis.com

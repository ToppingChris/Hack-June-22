resource "google_project_service" "datastore_googleapis_com" {
  project = "799576479852"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 799576479852/datastore.googleapis.com

resource "google_project_service" "storage_googleapis_com" {
  project = "799576479852"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 799576479852/storage.googleapis.com

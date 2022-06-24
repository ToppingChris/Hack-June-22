resource "google_project_service" "storage_api_googleapis_com" {
  project = "799576479852"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 799576479852/storage-api.googleapis.com

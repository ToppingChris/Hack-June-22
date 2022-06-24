resource "google_project_service" "sqladmin_googleapis_com" {
  project = "799576479852"
  service = "sqladmin.googleapis.com"
}
# terraform import google_project_service.sqladmin_googleapis_com 799576479852/sqladmin.googleapis.com

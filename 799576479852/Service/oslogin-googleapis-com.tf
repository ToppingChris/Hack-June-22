resource "google_project_service" "oslogin_googleapis_com" {
  project = "799576479852"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 799576479852/oslogin.googleapis.com

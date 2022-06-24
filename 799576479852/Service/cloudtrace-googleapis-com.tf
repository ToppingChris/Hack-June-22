resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "799576479852"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 799576479852/cloudtrace.googleapis.com

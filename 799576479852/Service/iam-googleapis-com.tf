resource "google_project_service" "iam_googleapis_com" {
  project = "799576479852"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 799576479852/iam.googleapis.com

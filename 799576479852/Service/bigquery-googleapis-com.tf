resource "google_project_service" "bigquery_googleapis_com" {
  project = "799576479852"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 799576479852/bigquery.googleapis.com

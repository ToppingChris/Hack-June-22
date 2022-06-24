resource "google_project_service" "pubsub_googleapis_com" {
  project = "799576479852"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 799576479852/pubsub.googleapis.com

resource "google_service_account" "799576479852_compute" {
  account_id   = "799576479852-compute"
  display_name = "Compute Engine default service account"
  project      = "lloyds-advk8s-team-2"
}
# terraform import google_service_account.799576479852_compute projects/lloyds-advk8s-team-2/serviceAccounts/799576479852-compute@lloyds-advk8s-team-2.iam.gserviceaccount.com

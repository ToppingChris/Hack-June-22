resource "google_storage_bucket" "eu_artifacts_lloyds_advk8s_team_2_appspot_com" {
  force_destroy            = false
  location                 = "EU"
  name                     = "eu.artifacts.lloyds-advk8s-team-2.appspot.com"
  project                  = "lloyds-advk8s-team-2"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.eu_artifacts_lloyds_advk8s_team_2_appspot_com eu.artifacts.lloyds-advk8s-team-2.appspot.com

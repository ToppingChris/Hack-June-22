resource "google_storage_bucket" "6ba3e55c75" {
  force_destroy            = false
  location                 = "EUROPE-WEST2"
  name                     = "6ba3e55c75"
  project                  = "lloyds-advk8s-team-2"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.6ba3e55c75 6ba3e55c75

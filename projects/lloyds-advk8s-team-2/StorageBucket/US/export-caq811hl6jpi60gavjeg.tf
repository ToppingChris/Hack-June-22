resource "google_storage_bucket" "export_caq811hl6jpi60gavjeg" {
  force_destroy            = false
  location                 = "US"
  name                     = "export-caq811hl6jpi60gavjeg"
  project                  = "lloyds-advk8s-team-2"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_caq811hl6jpi60gavjeg export-caq811hl6jpi60gavjeg

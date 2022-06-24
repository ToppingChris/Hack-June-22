resource "google_storage_bucket" "export_caq82jhl6jpi6r0eude0" {
  force_destroy            = false
  location                 = "US"
  name                     = "export-caq82jhl6jpi6r0eude0"
  project                  = "lloyds-advk8s-team-2"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_caq82jhl6jpi6r0eude0 export-caq82jhl6jpi6r0eude0

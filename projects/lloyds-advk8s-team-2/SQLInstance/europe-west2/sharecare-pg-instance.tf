resource "google_sql_database_instance" "sharecare_pg_instance" {
  database_version = "POSTGRES_12"
  name             = "sharecare-pg-instance"
  project          = "lloyds-advk8s-team-2"
  region           = "europe-west2"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"

    backup_configuration {
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }

      enabled                        = true
      location                       = "eu"
      point_in_time_recovery_enabled = true
      start_time                     = "00:00"
      transaction_log_retention_days = 7
    }

    disk_autoresize       = true
    disk_autoresize_limit = 0
    disk_size             = 10
    disk_type             = "PD_SSD"

    ip_configuration {
      authorized_networks {
        value = "0.0.0.0/0"
      }

      ipv4_enabled = true
    }

    location_preference {
      zone = "europe-west2-b"
    }

    pricing_plan = "PER_USE"
    tier         = "db-custom-1-3840"
  }
}
# terraform import google_sql_database_instance.sharecare_pg_instance projects/lloyds-advk8s-team-2/instances/sharecare-pg-instance

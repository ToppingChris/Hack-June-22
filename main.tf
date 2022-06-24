provider "google" {
  project = "lloyds-advk8s-team-2"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# resource "google_sql_database_instance" "team2-final3" {
#   name             = "team2-final3-instance"
#   database_version = "POSTGRES_12"
#   region           = "us-central1"
#   deletion_protection = false
# #   master_instance_name = "sharecare-pg-instance"
#   clone {
#       source_instance_name = "sharecare-pg-instance"
#       point_in_time = "2022-06-23T15:00:00Z"
#   }
# #    settings {
# # #     # Second-generation instance tiers are based on the machine
# # #     # type. See argument reference below.
     
# #      tier = "db-custom-2-4096"
# # #     # tier = "db-g1-small"
# #    }
# }

# resource "google_sql_database" "charity_db" {
#   name     = "sharecare-charity"
#   instance = google_sql_database_instance.team2-final3.name
# }

# resource "google_sql_database" "user_db" {
#   name     = "sharecare-user"
#   instance = google_sql_database_instance.team2-final3.name
# }

# resource "google_sql_database" "media_db" {
#   name     = "sharecare-media"
#   instance = google_sql_database_instance.team2-final3.name
# }

# resource "google_sql_database" "post_db" {
#   name     = "sharecare-post"
#   instance = google_sql_database_instance.team2-final3.name
# }

# resource "google_sql_user" "users" {
#   name     = "admin"
#   instance = google_sql_database_instance.team2-final3.name
#   password = "jeujdYTTtt7&&^"
# }

# terraform {
#   required_version = "> 0.8.0"
# }

# # resource "null_resource" "script" {

# #  provisioner "local-exec" {

# #     command = "/bin/bash script.sh"
# #   }
# # }

resource "google_service_account" "default" {
  account_id   = "service-account-k8"
  display_name = "Service Account"
}

resource "google_container_cluster" "primary" {
  name     = "team2-gke-cluster"
  location = "us-central1"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
#   enable_autopilot = true
#   default_max_pods_per_node = 32  
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  location   = "us-central1"
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_storage_bucket" "eu_artifacts_lloyds_advk8s_team_2_appspot_com" {
  force_destroy            = false
  location                 = "EU"
  name                     = "team2-storage"
  project                  = "lloyds-advk8s-team-2"
#   public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
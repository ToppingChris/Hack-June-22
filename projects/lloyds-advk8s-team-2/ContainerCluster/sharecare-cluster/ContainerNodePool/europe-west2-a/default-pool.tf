resource "google_container_node_pool" "default_pool" {
  cluster            = "sharecare-cluster"
  initial_node_count = 3
  location           = "europe-west2-a"

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  max_pods_per_node = 110
  name              = "default-pool"

  network_config {
    pod_ipv4_cidr_block = "10.108.0.0/14"
    pod_range           = "gke-sharecare-cluster-pods-0cde632f"
  }

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-standard"
    image_type   = "COS_CONTAINERD"
    machine_type = "e2-medium"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }

  node_count     = 3
  node_locations = ["europe-west2-a"]
  project        = "lloyds-advk8s-team-2"

  upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
  }

  version = "1.22.8-gke.202"
}
# terraform import google_container_node_pool.default_pool lloyds-advk8s-team-2/europe-west2-a/sharecare-cluster/default-pool

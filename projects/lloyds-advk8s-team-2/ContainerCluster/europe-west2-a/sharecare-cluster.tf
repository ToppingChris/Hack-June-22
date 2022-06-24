resource "google_container_cluster" "sharecare_cluster" {
  addons_config {
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    network_policy_config {
      disabled = true
    }
  }

  cluster_autoscaling {
    enabled = false
  }

  cluster_ipv4_cidr = "10.108.0.0/14"

  cluster_telemetry {
    type = "ENABLED"
  }

  database_encryption {
    state = "DECRYPTED"
  }

  default_max_pods_per_node = 110
  enable_shielded_nodes     = true

  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.108.0.0/14"
    cluster_secondary_range_name  = "gke-sharecare-cluster-pods-0cde632f"
    services_ipv4_cidr_block      = "10.112.0.0/20"
    services_secondary_range_name = "gke-sharecare-cluster-services-0cde632f"
  }

  location = "europe-west2-a"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]
  }

  name    = "sharecare-cluster"
  network = "projects/lloyds-advk8s-team-2/global/networks/default"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

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

  node_version = "1.22.8-gke.202"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  project = "lloyds-advk8s-team-2"

  release_channel {
    channel = "REGULAR"
  }

  subnetwork = "projects/lloyds-advk8s-team-2/regions/europe-west2/subnetworks/default"
}
# terraform import google_container_cluster.sharecare_cluster lloyds-advk8s-team-2/europe-west2-a/sharecare-cluster

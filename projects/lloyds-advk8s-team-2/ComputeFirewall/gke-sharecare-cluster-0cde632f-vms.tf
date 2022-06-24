resource "google_compute_firewall" "gke_sharecare_cluster_0cde632f_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  name          = "gke-sharecare-cluster-0cde632f-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/lloyds-advk8s-team-2/global/networks/default"
  priority      = 1000
  project       = "lloyds-advk8s-team-2"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-sharecare-cluster-0cde632f-node"]
}
# terraform import google_compute_firewall.gke_sharecare_cluster_0cde632f_vms projects/lloyds-advk8s-team-2/global/firewalls/gke-sharecare-cluster-0cde632f-vms

resource "google_compute_firewall" "gke_sharecare_cluster_0cde632f_all" {
  allow {
    protocol = "ah"
  }

  allow {
    protocol = "esp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "sctp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  direction     = "INGRESS"
  name          = "gke-sharecare-cluster-0cde632f-all"
  network       = "https://www.googleapis.com/compute/v1/projects/lloyds-advk8s-team-2/global/networks/default"
  priority      = 1000
  project       = "lloyds-advk8s-team-2"
  source_ranges = ["10.108.0.0/14"]
  target_tags   = ["gke-sharecare-cluster-0cde632f-node"]
}
# terraform import google_compute_firewall.gke_sharecare_cluster_0cde632f_all projects/lloyds-advk8s-team-2/global/firewalls/gke-sharecare-cluster-0cde632f-all

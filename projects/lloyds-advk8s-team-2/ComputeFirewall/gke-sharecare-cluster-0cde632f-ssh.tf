resource "google_compute_firewall" "gke_sharecare_cluster_0cde632f_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-sharecare-cluster-0cde632f-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/lloyds-advk8s-team-2/global/networks/default"
  priority      = 1000
  project       = "lloyds-advk8s-team-2"
  source_ranges = ["35.246.84.199/32"]
  target_tags   = ["gke-sharecare-cluster-0cde632f-node"]
}
# terraform import google_compute_firewall.gke_sharecare_cluster_0cde632f_ssh projects/lloyds-advk8s-team-2/global/firewalls/gke-sharecare-cluster-0cde632f-ssh

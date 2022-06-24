resource "google_compute_firewall" "k8s_d335a5cca6bcb043_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description   = "{\"kubernetes.io/cluster-id\":\"d335a5cca6bcb043\"}"
  direction     = "INGRESS"
  name          = "k8s-d335a5cca6bcb043-node-http-hc"
  network       = "https://www.googleapis.com/compute/v1/projects/lloyds-advk8s-team-2/global/networks/default"
  priority      = 1000
  project       = "lloyds-advk8s-team-2"
  source_ranges = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags   = ["gke-sharecare-cluster-0cde632f-node"]
}
# terraform import google_compute_firewall.k8s_d335a5cca6bcb043_node_http_hc projects/lloyds-advk8s-team-2/global/firewalls/k8s-d335a5cca6bcb043-node-http-hc

resource "google_compute_firewall" "k8s_fw_a47e3b9cb58e641bc9ba605c6cfe1afd" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }

  description   = "{\"kubernetes.io/service-name\":\"default/nginx-ingress-ingress-nginx-controller\", \"kubernetes.io/service-ip\":\"35.246.125.140\"}"
  direction     = "INGRESS"
  name          = "k8s-fw-a47e3b9cb58e641bc9ba605c6cfe1afd"
  network       = "https://www.googleapis.com/compute/v1/projects/lloyds-advk8s-team-2/global/networks/default"
  priority      = 1000
  project       = "lloyds-advk8s-team-2"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-sharecare-cluster-0cde632f-node"]
}
# terraform import google_compute_firewall.k8s_fw_a47e3b9cb58e641bc9ba605c6cfe1afd projects/lloyds-advk8s-team-2/global/firewalls/k8s-fw-a47e3b9cb58e641bc9ba605c6cfe1afd

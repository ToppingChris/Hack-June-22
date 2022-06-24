resource "google_compute_firewall" "default_allow_rdp" {
  allow {
    ports    = ["3389"]
    protocol = "tcp"
  }

  description   = "Allow RDP from anywhere"
  direction     = "INGRESS"
  name          = "default-allow-rdp"
  network       = "https://www.googleapis.com/compute/v1/projects/lloyds-advk8s-team-2/global/networks/default"
  priority      = 65534
  project       = "lloyds-advk8s-team-2"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.default_allow_rdp projects/lloyds-advk8s-team-2/global/firewalls/default-allow-rdp

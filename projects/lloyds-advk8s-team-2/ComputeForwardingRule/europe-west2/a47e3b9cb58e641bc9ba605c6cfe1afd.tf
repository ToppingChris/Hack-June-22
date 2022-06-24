resource "google_compute_forwarding_rule" "a47e3b9cb58e641bc9ba605c6cfe1afd" {
  description           = "{\"kubernetes.io/service-name\":\"default/nginx-ingress-ingress-nginx-controller\"}"
  ip_address            = "35.246.125.140"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a47e3b9cb58e641bc9ba605c6cfe1afd"
  network_tier          = "PREMIUM"
  port_range            = "80-443"
  project               = "lloyds-advk8s-team-2"
  region                = "europe-west2"
  target                = "https://www.googleapis.com/compute/beta/projects/lloyds-advk8s-team-2/regions/europe-west2/targetPools/a47e3b9cb58e641bc9ba605c6cfe1afd"
}
# terraform import google_compute_forwarding_rule.a47e3b9cb58e641bc9ba605c6cfe1afd projects/lloyds-advk8s-team-2/regions/europe-west2/forwardingRules/a47e3b9cb58e641bc9ba605c6cfe1afd

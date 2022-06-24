resource "google_compute_http_health_check" "k8s_d335a5cca6bcb043_node" {
  check_interval_sec  = 8
  description         = "{\"kubernetes.io/service-name\":\"k8s-d335a5cca6bcb043-node\"}"
  healthy_threshold   = 1
  name                = "k8s-d335a5cca6bcb043-node"
  port                = 10256
  project             = "lloyds-advk8s-team-2"
  request_path        = "/healthz"
  timeout_sec         = 1
  unhealthy_threshold = 3
}
# terraform import google_compute_http_health_check.k8s_d335a5cca6bcb043_node projects/lloyds-advk8s-team-2/global/httpHealthChecks/k8s-d335a5cca6bcb043-node

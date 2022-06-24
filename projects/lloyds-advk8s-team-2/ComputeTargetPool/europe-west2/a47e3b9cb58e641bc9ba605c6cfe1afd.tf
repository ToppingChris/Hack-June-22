resource "google_compute_target_pool" "a47e3b9cb58e641bc9ba605c6cfe1afd" {
  description      = "{\"kubernetes.io/service-name\":\"default/nginx-ingress-ingress-nginx-controller\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/lloyds-advk8s-team-2/global/httpHealthChecks/k8s-d335a5cca6bcb043-node"]
  instances        = ["europe-west2-a/gke-sharecare-cluster-default-pool-72d25af4-2m0n", "europe-west2-a/gke-sharecare-cluster-default-pool-72d25af4-qf5t", "europe-west2-a/gke-sharecare-cluster-default-pool-72d25af4-xgzg"]
  name             = "a47e3b9cb58e641bc9ba605c6cfe1afd"
  project          = "lloyds-advk8s-team-2"
  region           = "europe-west2"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a47e3b9cb58e641bc9ba605c6cfe1afd projects/lloyds-advk8s-team-2/regions/europe-west2/targetPools/a47e3b9cb58e641bc9ba605c6cfe1afd

resource "google_compute_instance_group" "gke_sharecare_cluster_default_pool_72d25af4_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-sharecare-cluster-default-pool-72d25af4-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/lloyds-advk8s-team-2/zones/europe-west2-a/instances/gke-sharecare-cluster-default-pool-72d25af4-2m0n", "https://www.googleapis.com/compute/beta/projects/lloyds-advk8s-team-2/zones/europe-west2-a/instances/gke-sharecare-cluster-default-pool-72d25af4-qf5t", "https://www.googleapis.com/compute/beta/projects/lloyds-advk8s-team-2/zones/europe-west2-a/instances/gke-sharecare-cluster-default-pool-72d25af4-xgzg"]
  name        = "gke-sharecare-cluster-default-pool-72d25af4-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/lloyds-advk8s-team-2/global/networks/default"
  project     = "lloyds-advk8s-team-2"
  zone        = "europe-west2-a"
}
# terraform import google_compute_instance_group.gke_sharecare_cluster_default_pool_72d25af4_grp projects/lloyds-advk8s-team-2/zones/europe-west2-a/instanceGroups/gke-sharecare-cluster-default-pool-72d25af4-grp

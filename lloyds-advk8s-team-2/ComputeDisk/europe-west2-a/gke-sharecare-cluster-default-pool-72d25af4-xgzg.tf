resource "google_compute_disk" "gke_sharecare_cluster_default_pool_72d25af4_xgzg" {
  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1228-gke202-cos-93-16623-102-23-v220602-c-pre"

  labels = {
    goog-gke-node   = ""
    goog-gke-volume = ""
  }

  name                      = "gke-sharecare-cluster-default-pool-72d25af4-xgzg"
  physical_block_size_bytes = 4096
  project                   = "lloyds-advk8s-team-2"
  size                      = 100
  type                      = "pd-standard"
  zone                      = "europe-west2-a"
}
# terraform import google_compute_disk.gke_sharecare_cluster_default_pool_72d25af4_xgzg projects/lloyds-advk8s-team-2/zones/europe-west2-a/disks/gke-sharecare-cluster-default-pool-72d25af4-xgzg

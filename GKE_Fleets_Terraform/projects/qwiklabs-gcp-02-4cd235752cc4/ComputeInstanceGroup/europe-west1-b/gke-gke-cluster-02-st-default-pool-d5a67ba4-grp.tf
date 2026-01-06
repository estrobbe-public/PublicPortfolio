resource "google_compute_instance_group" "gke_gke_cluster_02_st_default_pool_d5a67ba4_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gke-cluster-02-st-default-pool-d5a67ba4-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/instances/gke-gke-cluster-02-st-default-pool-d5a67ba4-4h22", "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/instances/gke-gke-cluster-02-st-default-pool-d5a67ba4-qxfx"]
  name        = "gke-gke-cluster-02-st-default-pool-d5a67ba4-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  project     = "qwiklabs-gcp-02-4cd235752cc4"
  zone        = "europe-west1-b"
}
# terraform import google_compute_instance_group.gke_gke_cluster_02_st_default_pool_d5a67ba4_grp projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/instanceGroups/gke-gke-cluster-02-st-default-pool-d5a67ba4-grp

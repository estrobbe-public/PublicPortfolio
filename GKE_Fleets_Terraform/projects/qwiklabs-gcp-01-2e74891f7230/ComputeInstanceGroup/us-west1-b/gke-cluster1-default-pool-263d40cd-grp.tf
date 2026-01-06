resource "google_compute_instance_group" "gke_cluster1_default_pool_263d40cd_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-cluster1-default-pool-263d40cd-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/instances/gke-cluster1-default-pool-263d40cd-j4zk"]
  name        = "gke-cluster1-default-pool-263d40cd-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  project     = "qwiklabs-gcp-01-2e74891f7230"
  zone        = "us-west1-b"
}
# terraform import google_compute_instance_group.gke_cluster1_default_pool_263d40cd_grp projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/instanceGroups/gke-cluster1-default-pool-263d40cd-grp

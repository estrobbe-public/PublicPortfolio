resource "google_compute_instance_group" "gke_cluster2_default_pool_8b8d378a_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-cluster2-default-pool-8b8d378a-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/instances/gke-cluster2-default-pool-8b8d378a-v4wd"]
  name        = "gke-cluster2-default-pool-8b8d378a-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  project     = "qwiklabs-gcp-01-2e74891f7230"
  zone        = "us-west1-b"
}
# terraform import google_compute_instance_group.gke_cluster2_default_pool_8b8d378a_grp projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/instanceGroups/gke-cluster2-default-pool-8b8d378a-grp

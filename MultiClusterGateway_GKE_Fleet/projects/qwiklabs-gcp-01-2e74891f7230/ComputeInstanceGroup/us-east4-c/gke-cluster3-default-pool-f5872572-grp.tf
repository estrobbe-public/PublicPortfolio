resource "google_compute_instance_group" "gke_cluster3_default_pool_f5872572_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-cluster3-default-pool-f5872572-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/zones/us-east4-c/instances/gke-cluster3-default-pool-f5872572-41p2"]
  name        = "gke-cluster3-default-pool-f5872572-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  project     = "qwiklabs-gcp-01-2e74891f7230"
  zone        = "us-east4-c"
}
# terraform import google_compute_instance_group.gke_cluster3_default_pool_f5872572_grp projects/qwiklabs-gcp-01-2e74891f7230/zones/us-east4-c/instanceGroups/gke-cluster3-default-pool-f5872572-grp

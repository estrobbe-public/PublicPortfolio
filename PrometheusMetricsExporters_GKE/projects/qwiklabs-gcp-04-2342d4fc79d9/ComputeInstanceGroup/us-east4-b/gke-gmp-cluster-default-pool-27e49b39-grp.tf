resource "google_compute_instance_group" "gke_gmp_cluster_default_pool_27e49b39_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-gmp-cluster-default-pool-27e49b39-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-04-2342d4fc79d9/zones/us-east4-b/instances/gke-gmp-cluster-default-pool-27e49b39-8g6m"]
  name        = "gke-gmp-cluster-default-pool-27e49b39-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-04-2342d4fc79d9/global/networks/default"
  project     = "qwiklabs-gcp-04-2342d4fc79d9"
  zone        = "us-east4-b"
}
# terraform import google_compute_instance_group.gke_gmp_cluster_default_pool_27e49b39_grp projects/qwiklabs-gcp-04-2342d4fc79d9/zones/us-east4-b/instanceGroups/gke-gmp-cluster-default-pool-27e49b39-grp

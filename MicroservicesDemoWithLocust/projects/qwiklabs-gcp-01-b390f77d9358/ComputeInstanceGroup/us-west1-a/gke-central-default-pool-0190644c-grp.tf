resource "google_compute_instance_group" "gke_central_default_pool_0190644c_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-central-default-pool-0190644c-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/instances/gke-central-default-pool-0190644c-13mh", "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/instances/gke-central-default-pool-0190644c-fhdv", "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/instances/gke-central-default-pool-0190644c-hh8r", "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/instances/gke-central-default-pool-0190644c-vgr0"]
  name        = "gke-central-default-pool-0190644c-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  project     = "qwiklabs-gcp-01-b390f77d9358"
  zone        = "us-west1-a"
}
# terraform import google_compute_instance_group.gke_central_default_pool_0190644c_grp projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/instanceGroups/gke-central-default-pool-0190644c-grp

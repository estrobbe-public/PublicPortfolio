resource "google_compute_firewall" "gke_gke_cluster_01_ap_2deca5d0_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-cluster-01-ap-2deca5d0-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority      = 999
  project       = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges = ["10.62.0.0/17"]
  source_tags   = ["gke-gke-cluster-01-ap-2deca5d0-node"]
  target_tags   = ["gke-gke-cluster-01-ap-2deca5d0-node"]
}
# terraform import google_compute_firewall.gke_gke_cluster_01_ap_2deca5d0_inkubelet projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/gke-gke-cluster-01-ap-2deca5d0-inkubelet

resource "google_compute_firewall" "gke_gke_cluster_02_st_0712d06d_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-cluster-02-st-0712d06d-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority      = 999
  project       = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges = ["10.20.0.0/14"]
  source_tags   = ["gke-gke-cluster-02-st-0712d06d-node"]
  target_tags   = ["gke-gke-cluster-02-st-0712d06d-node"]
}
# terraform import google_compute_firewall.gke_gke_cluster_02_st_0712d06d_inkubelet projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/gke-gke-cluster-02-st-0712d06d-inkubelet

resource "google_compute_firewall" "gke_gke_cluster_02_st_0712d06d_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-cluster-02-st-0712d06d-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-gke-cluster-02-st-0712d06d-node"]
}
# terraform import google_compute_firewall.gke_gke_cluster_02_st_0712d06d_exkubelet projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/gke-gke-cluster-02-st-0712d06d-exkubelet

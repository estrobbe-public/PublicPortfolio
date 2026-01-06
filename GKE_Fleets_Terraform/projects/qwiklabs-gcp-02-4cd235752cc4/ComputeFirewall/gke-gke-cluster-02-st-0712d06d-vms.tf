resource "google_compute_firewall" "gke_gke_cluster_02_st_0712d06d_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-cluster-02-st-0712d06d-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-gke-cluster-02-st-0712d06d-node"]
}
# terraform import google_compute_firewall.gke_gke_cluster_02_st_0712d06d_vms projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/gke-gke-cluster-02-st-0712d06d-vms

resource "google_compute_firewall" "gke_gke_cluster_01_ap_2deca5d0_all" {
  allow {
    protocol = "ah"
  }

  allow {
    protocol = "esp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "sctp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  direction     = "INGRESS"
  name          = "gke-gke-cluster-01-ap-2deca5d0-all"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges = ["10.62.0.0/17"]
  target_tags   = ["gke-gke-cluster-01-ap-2deca5d0-node"]
}
# terraform import google_compute_firewall.gke_gke_cluster_01_ap_2deca5d0_all projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/gke-gke-cluster-01-ap-2deca5d0-all

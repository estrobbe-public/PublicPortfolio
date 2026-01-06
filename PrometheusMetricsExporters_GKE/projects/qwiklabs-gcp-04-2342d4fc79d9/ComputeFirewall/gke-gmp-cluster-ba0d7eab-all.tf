resource "google_compute_firewall" "gke_gmp_cluster_ba0d7eab_all" {
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
  name          = "gke-gmp-cluster-ba0d7eab-all"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-2342d4fc79d9/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-04-2342d4fc79d9"
  source_ranges = ["10.56.0.0/14"]
  target_tags   = ["gke-gmp-cluster-ba0d7eab-node"]
}
# terraform import google_compute_firewall.gke_gmp_cluster_ba0d7eab_all projects/qwiklabs-gcp-04-2342d4fc79d9/global/firewalls/gke-gmp-cluster-ba0d7eab-all

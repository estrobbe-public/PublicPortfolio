resource "google_compute_firewall" "gke_gmp_cluster_ba0d7eab_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-gmp-cluster-ba0d7eab-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-2342d4fc79d9/global/networks/default"
  priority      = 999
  project       = "qwiklabs-gcp-04-2342d4fc79d9"
  source_ranges = ["10.56.0.0/14"]
  source_tags   = ["gke-gmp-cluster-ba0d7eab-node"]
  target_tags   = ["gke-gmp-cluster-ba0d7eab-node"]
}
# terraform import google_compute_firewall.gke_gmp_cluster_ba0d7eab_inkubelet projects/qwiklabs-gcp-04-2342d4fc79d9/global/firewalls/gke-gmp-cluster-ba0d7eab-inkubelet

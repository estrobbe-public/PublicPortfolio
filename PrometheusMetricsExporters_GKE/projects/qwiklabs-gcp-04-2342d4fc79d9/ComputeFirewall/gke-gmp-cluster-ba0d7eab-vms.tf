resource "google_compute_firewall" "gke_gmp_cluster_ba0d7eab_vms" {
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
  name          = "gke-gmp-cluster-ba0d7eab-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-2342d4fc79d9/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-04-2342d4fc79d9"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-gmp-cluster-ba0d7eab-node"]
}
# terraform import google_compute_firewall.gke_gmp_cluster_ba0d7eab_vms projects/qwiklabs-gcp-04-2342d4fc79d9/global/firewalls/gke-gmp-cluster-ba0d7eab-vms

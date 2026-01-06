resource "google_dns_managed_zone" "gke_gke_cluster_01_ap_2deca5d0_dns" {
  cloud_logging_config {
    enable_logging = false
  }

  description   = "Private zone for GKE cluster \"gke-cluster-01-ap\" with cluster suffix \"cluster.local.\" in project \"qwiklabs-gcp-02-4cd235752cc4\" with scope \"CLUSTER_SCOPE\""
  dns_name      = "cluster.local."
  force_destroy = false

  labels = {
    goog-gke-node   = "clouddns-autopilot"
    managed-by-cnrm = "true"
  }

  name = "gke-gke-cluster-01-ap-2deca5d0-dns"

  private_visibility_config {
    gke_clusters {
      gke_cluster_name = "projects/qwiklabs-gcp-02-4cd235752cc4/locations/europe-west1/clusters/gke-cluster-01-ap"
    }
  }

  project    = "qwiklabs-gcp-02-4cd235752cc4"
  visibility = "private"
}
# terraform import google_dns_managed_zone.gke_gke_cluster_01_ap_2deca5d0_dns projects/qwiklabs-gcp-02-4cd235752cc4/managedZones/gke-gke-cluster-01-ap-2deca5d0-dns

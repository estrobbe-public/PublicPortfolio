resource "google_compute_global_forwarding_rule" "gkemcs_qwiklabs_gcp_01_2e74891f7230_default" {
  ip_address  = "127.0.0.1"
  ip_protocol = "TCP"

  labels = {
    goog-gke-node   = ""
    managed-by-cnrm = "true"
  }

  load_balancing_scheme = "INTERNAL_SELF_MANAGED"

  metadata_filters {
    filter_labels {
      name  = "name"
      value = "gke-mcs-importer"
    }

    filter_labels {
      name  = "version"
      value = "v1"
    }

    filter_labels {
      name  = "fleet"
      value = "268855880648"
    }

    filter_match_criteria = "MATCH_ALL"
  }

  name       = "gkemcs-qwiklabs-gcp-01-2e74891f7230-default"
  network    = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  port_range = "1-1"
  project    = "qwiklabs-gcp-01-2e74891f7230"
  target     = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/global/targetHttpProxies/gkemcs-qwiklabs-gcp-01-2e74891f7230-default"
}
# terraform import google_compute_global_forwarding_rule.gkemcs_qwiklabs_gcp_01_2e74891f7230_default projects/qwiklabs-gcp-01-2e74891f7230/global/forwardingRules/gkemcs-qwiklabs-gcp-01-2e74891f7230-default

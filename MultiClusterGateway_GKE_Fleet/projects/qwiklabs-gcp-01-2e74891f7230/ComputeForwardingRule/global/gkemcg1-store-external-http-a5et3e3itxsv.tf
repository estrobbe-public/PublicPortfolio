resource "google_compute_global_forwarding_rule" "gkemcg1_store_external_http_a5et3e3itxsv" {
  description = "{\"k8sResource\":\"/namespaces/store/gateways/external-http\",\"k8sCluster\":\"/projects/qwiklabs-gcp-01-2e74891f7230/locations/us-west1-b/clusters/cluster1\"}"
  ip_address  = "34.144.245.114"
  ip_protocol = "TCP"

  labels = {
    goog-gke-node   = ""
    managed-by-cnrm = "true"
  }

  load_balancing_scheme = "EXTERNAL"
  name                  = "gkemcg1-store-external-http-a5et3e3itxsv"
  port_range            = "80-80"
  project               = "qwiklabs-gcp-01-2e74891f7230"
  target                = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-2e74891f7230/global/targetHttpProxies/gkemcg1-store-external-http-94oqhkftu5yz"
}
# terraform import google_compute_global_forwarding_rule.gkemcg1_store_external_http_a5et3e3itxsv projects/qwiklabs-gcp-01-2e74891f7230/global/forwardingRules/gkemcg1-store-external-http-a5et3e3itxsv

resource "google_compute_target_http_proxy" "gkemcg1_store_external_http_94oqhkftu5yz" {
  description = "{\"k8sResource\":\"/namespaces/store/gateways/external-http\",\"k8sCluster\":\"/projects/qwiklabs-gcp-01-2e74891f7230/locations/us-west1-b/clusters/cluster1\"}"
  name        = "gkemcg1-store-external-http-94oqhkftu5yz"
  project     = "qwiklabs-gcp-01-2e74891f7230"
  url_map     = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/urlMaps/gkemcg1-store-external-http-94oqhkftu5yz"
}
# terraform import google_compute_target_http_proxy.gkemcg1_store_external_http_94oqhkftu5yz projects/qwiklabs-gcp-01-2e74891f7230/global/targetHttpProxies/gkemcg1-store-external-http-94oqhkftu5yz

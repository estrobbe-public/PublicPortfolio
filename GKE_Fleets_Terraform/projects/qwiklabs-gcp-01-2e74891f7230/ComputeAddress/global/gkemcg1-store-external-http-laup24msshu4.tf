resource "google_compute_global_address" "gkemcg1_store_external_http_laup24msshu4" {
  address      = "34.144.245.114"
  address_type = "EXTERNAL"
  description  = "{\"k8sResource\":\"/namespaces/store/gateways/external-http\",\"k8sCluster\":\"/projects/qwiklabs-gcp-01-2e74891f7230/locations/us-west1-b/clusters/cluster1\"}"

  labels = {
    managed-by-cnrm = "true"
  }

  name    = "gkemcg1-store-external-http-laup24msshu4"
  project = "qwiklabs-gcp-01-2e74891f7230"
}
# terraform import google_compute_global_address.gkemcg1_store_external_http_laup24msshu4 projects/qwiklabs-gcp-01-2e74891f7230/global/addresses/gkemcg1-store-external-http-laup24msshu4

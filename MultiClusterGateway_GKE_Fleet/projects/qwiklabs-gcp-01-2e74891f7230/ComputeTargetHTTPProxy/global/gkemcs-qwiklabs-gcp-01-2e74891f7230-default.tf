resource "google_compute_target_http_proxy" "gkemcs_qwiklabs_gcp_01_2e74891f7230_default" {
  name    = "gkemcs-qwiklabs-gcp-01-2e74891f7230-default"
  project = "qwiklabs-gcp-01-2e74891f7230"
  url_map = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/urlMaps/gkemcs-qwiklabs-gcp-01-2e74891f7230-default"
}
# terraform import google_compute_target_http_proxy.gkemcs_qwiklabs_gcp_01_2e74891f7230_default projects/qwiklabs-gcp-01-2e74891f7230/global/targetHttpProxies/gkemcs-qwiklabs-gcp-01-2e74891f7230-default

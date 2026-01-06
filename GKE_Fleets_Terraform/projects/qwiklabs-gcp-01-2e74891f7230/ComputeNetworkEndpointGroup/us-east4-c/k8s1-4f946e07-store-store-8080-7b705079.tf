resource "google_compute_network_endpoint_group" "k8s1_4f946e07_store_store_8080_7b705079" {
  description           = "{\"cluster-uid\":\"19b9b1a7-4859-4a49-a3af-2e9bd22c277f\",\"namespace\":\"store\",\"service-name\":\"store\",\"port\":\"8080\"}"
  name                  = "k8s1-4f946e07-store-store-8080-7b705079"
  network               = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "qwiklabs-gcp-01-2e74891f7230"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/regions/us-east4/subnetworks/default"
  zone                  = "us-east4-c"
}
# terraform import google_compute_network_endpoint_group.k8s1_4f946e07_store_store_8080_7b705079 projects/qwiklabs-gcp-01-2e74891f7230/zones/us-east4-c/networkEndpointGroups/k8s1-4f946e07-store-store-8080-7b705079

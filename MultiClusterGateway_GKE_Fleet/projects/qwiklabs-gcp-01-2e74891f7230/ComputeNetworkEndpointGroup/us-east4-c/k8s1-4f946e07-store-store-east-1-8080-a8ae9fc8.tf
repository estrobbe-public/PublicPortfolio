resource "google_compute_network_endpoint_group" "k8s1_4f946e07_store_store_east_1_8080_a8ae9fc8" {
  description           = "{\"cluster-uid\":\"19b9b1a7-4859-4a49-a3af-2e9bd22c277f\",\"namespace\":\"store\",\"service-name\":\"store-east-1\",\"port\":\"8080\"}"
  name                  = "k8s1-4f946e07-store-store-east-1-8080-a8ae9fc8"
  network               = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "qwiklabs-gcp-01-2e74891f7230"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/regions/us-east4/subnetworks/default"
  zone                  = "us-east4-c"
}
# terraform import google_compute_network_endpoint_group.k8s1_4f946e07_store_store_east_1_8080_a8ae9fc8 projects/qwiklabs-gcp-01-2e74891f7230/zones/us-east4-c/networkEndpointGroups/k8s1-4f946e07-store-store-east-1-8080-a8ae9fc8

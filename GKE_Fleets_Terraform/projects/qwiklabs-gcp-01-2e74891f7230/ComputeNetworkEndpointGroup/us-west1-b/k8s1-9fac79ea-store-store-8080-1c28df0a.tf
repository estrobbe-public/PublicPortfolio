resource "google_compute_network_endpoint_group" "k8s1_9fac79ea_store_store_8080_1c28df0a" {
  description           = "{\"cluster-uid\":\"b08e20f4-b5ca-4835-b3d3-d0daf81150ad\",\"namespace\":\"store\",\"service-name\":\"store\",\"port\":\"8080\"}"
  name                  = "k8s1-9fac79ea-store-store-8080-1c28df0a"
  network               = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "qwiklabs-gcp-01-2e74891f7230"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/regions/us-west1/subnetworks/default"
  zone                  = "us-west1-b"
}
# terraform import google_compute_network_endpoint_group.k8s1_9fac79ea_store_store_8080_1c28df0a projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/networkEndpointGroups/k8s1-9fac79ea-store-store-8080-1c28df0a

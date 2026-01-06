resource "google_compute_network_endpoint_group" "k8s1_9fac79ea_store_store_west_2_8080_8bc055eb" {
  description           = "{\"cluster-uid\":\"b08e20f4-b5ca-4835-b3d3-d0daf81150ad\",\"namespace\":\"store\",\"service-name\":\"store-west-2\",\"port\":\"8080\"}"
  name                  = "k8s1-9fac79ea-store-store-west-2-8080-8bc055eb"
  network               = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "qwiklabs-gcp-01-2e74891f7230"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/regions/us-west1/subnetworks/default"
  zone                  = "us-west1-b"
}
# terraform import google_compute_network_endpoint_group.k8s1_9fac79ea_store_store_west_2_8080_8bc055eb projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/networkEndpointGroups/k8s1-9fac79ea-store-store-west-2-8080-8bc055eb

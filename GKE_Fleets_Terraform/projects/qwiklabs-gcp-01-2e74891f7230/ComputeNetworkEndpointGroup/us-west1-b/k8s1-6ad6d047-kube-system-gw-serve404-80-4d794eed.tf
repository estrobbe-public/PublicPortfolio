resource "google_compute_network_endpoint_group" "k8s1_6ad6d047_kube_system_gw_serve404_80_4d794eed" {
  description           = "{\"cluster-uid\":\"b0284474-269b-4221-9112-9e315229fdcd\",\"namespace\":\"kube-system\",\"service-name\":\"gw-serve404\",\"port\":\"80\"}"
  name                  = "k8s1-6ad6d047-kube-system-gw-serve404-80-4d794eed"
  network               = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  network_endpoint_type = "GCE_VM_IP_PORT"
  project               = "qwiklabs-gcp-01-2e74891f7230"
  subnetwork            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/regions/us-west1/subnetworks/default"
  zone                  = "us-west1-b"
}
# terraform import google_compute_network_endpoint_group.k8s1_6ad6d047_kube_system_gw_serve404_80_4d794eed projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/networkEndpointGroups/k8s1-6ad6d047-kube-system-gw-serve404-80-4d794eed

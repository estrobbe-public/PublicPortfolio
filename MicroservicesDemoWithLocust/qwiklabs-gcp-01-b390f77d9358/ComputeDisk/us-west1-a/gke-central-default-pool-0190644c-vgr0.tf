resource "google_compute_disk" "gke_central_default_pool_0190644c_vgr0" {
  guest_os_features {
    type = "GVNIC"
  }

  guest_os_features {
    type = "IDPF"
  }

  guest_os_features {
    type = "SEV_CAPABLE"
  }

  guest_os_features {
    type = "SEV_LIVE_MIGRATABLE"
  }

  guest_os_features {
    type = "SEV_LIVE_MIGRATABLE_V2"
  }

  guest_os_features {
    type = "SEV_SNP_CAPABLE"
  }

  guest_os_features {
    type = "TDX_CAPABLE"
  }

  guest_os_features {
    type = "UEFI_COMPATIBLE"
  }

  guest_os_features {
    type = "VIRTIO_SCSI_MULTIQUEUE"
  }

  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1335-gke1308000-cos-121-18867-199-88-c-pre"

  labels = {
    goog-gke-cluster-id-base32            = "2452rl23gfdyvdnyp2cfuwrmdis2r7w3cd6ulk4gipzcn5wj7cmq"
    goog-gke-node                         = ""
    goog-gke-node-pool-provisioning-model = "on-demand"
    goog-gke-volume                       = ""
    goog-k8s-cluster-location             = "us-west1-a"
    goog-k8s-cluster-name                 = "central"
    goog-k8s-node-pool-name               = "default-pool"
    managed-by-cnrm                       = "true"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos-pcid", "https://www.googleapis.com/compute/v1/projects/cos-cloud-shielded/global/licenses/shielded-cos", "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/licenses/gke-node"]
  name                      = "gke-central-default-pool-0190644c-vgr0"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-01-b390f77d9358"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "us-west1-a"
}
# terraform import google_compute_disk.gke_central_default_pool_0190644c_vgr0 projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/disks/gke-central-default-pool-0190644c-vgr0

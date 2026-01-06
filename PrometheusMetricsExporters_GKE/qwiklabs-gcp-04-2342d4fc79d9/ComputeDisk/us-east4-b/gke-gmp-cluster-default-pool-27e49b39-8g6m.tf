resource "google_compute_disk" "gke_gmp_cluster_default_pool_27e49b39_8g6m" {
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
    goog-gke-cluster-id-base32            = "xigx5kzdtjcbdeqowmh5lqghdqjzyz2zdm4uonfc5v5r3ipfkbyq"
    goog-gke-node                         = ""
    goog-gke-node-pool-provisioning-model = "on-demand"
    goog-gke-volume                       = ""
    goog-k8s-cluster-location             = "us-east4-b"
    goog-k8s-cluster-name                 = "gmp-cluster"
    goog-k8s-node-pool-name               = "default-pool"
    managed-by-cnrm                       = "true"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos-pcid", "https://www.googleapis.com/compute/v1/projects/cos-cloud-shielded/global/licenses/shielded-cos", "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/licenses/gke-node"]
  name                      = "gke-gmp-cluster-default-pool-27e49b39-8g6m"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-04-2342d4fc79d9"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "us-east4-b"
}
# terraform import google_compute_disk.gke_gmp_cluster_default_pool_27e49b39_8g6m projects/qwiklabs-gcp-04-2342d4fc79d9/zones/us-east4-b/disks/gke-gmp-cluster-default-pool-27e49b39-8g6m

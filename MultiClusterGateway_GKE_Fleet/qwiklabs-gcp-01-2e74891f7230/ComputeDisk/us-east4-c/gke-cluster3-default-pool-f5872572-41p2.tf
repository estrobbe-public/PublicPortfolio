resource "google_compute_disk" "gke_cluster3_default_pool_f5872572_41p2" {
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
    goog-fleet-project                    = "qwiklabs-gcp-01-2e74891f7230"
    goog-gke-cluster-id-base32            = "5jtzx5aplzhpzhbtukhf5of4gmxnf632zq6uhqujxtvcdyfcix2a"
    goog-gke-node                         = ""
    goog-gke-node-pool-provisioning-model = "on-demand"
    goog-gke-volume                       = ""
    goog-k8s-cluster-location             = "us-east4-c"
    goog-k8s-cluster-name                 = "cluster3"
    goog-k8s-node-pool-name               = "default-pool"
    managed-by-cnrm                       = "true"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos-pcid", "https://www.googleapis.com/compute/v1/projects/cos-cloud-shielded/global/licenses/shielded-cos", "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/licenses/gke-node"]
  name                      = "gke-cluster3-default-pool-f5872572-41p2"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-01-2e74891f7230"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "us-east4-c"
}
# terraform import google_compute_disk.gke_cluster3_default_pool_f5872572_41p2 projects/qwiklabs-gcp-01-2e74891f7230/zones/us-east4-c/disks/gke-cluster3-default-pool-f5872572-41p2

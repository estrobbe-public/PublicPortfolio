resource "google_compute_disk" "gke_cluster1_default_pool_263d40cd_j4zk" {
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
    goog-gke-cluster-id-base32            = "ilcousyn4jd5zogknbsdzq3bgvozybox6tluz34w624j3zi6h4wa"
    goog-gke-node                         = ""
    goog-gke-node-pool-provisioning-model = "on-demand"
    goog-gke-volume                       = ""
    goog-k8s-cluster-location             = "us-west1-b"
    goog-k8s-cluster-name                 = "cluster1"
    goog-k8s-node-pool-name               = "default-pool"
    managed-by-cnrm                       = "true"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos-pcid", "https://www.googleapis.com/compute/v1/projects/cos-cloud-shielded/global/licenses/shielded-cos", "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/licenses/gke-node"]
  name                      = "gke-cluster1-default-pool-263d40cd-j4zk"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-01-2e74891f7230"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "us-west1-b"
}
# terraform import google_compute_disk.gke_cluster1_default_pool_263d40cd_j4zk projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/disks/gke-cluster1-default-pool-263d40cd-j4zk

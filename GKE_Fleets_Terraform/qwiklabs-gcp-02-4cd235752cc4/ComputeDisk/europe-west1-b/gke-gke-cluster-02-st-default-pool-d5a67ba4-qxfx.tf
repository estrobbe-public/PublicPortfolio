resource "google_compute_disk" "gke_gke_cluster_02_st_default_pool_d5a67ba4_qxfx" {
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
    type = "SNP_SVSM_CAPABLE"
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

  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1341-gke3355002-cos-125-19216-104-32-c-pre"

  labels = {
    goog-fleet-project                    = "qwiklabs-gcp-02-4cd235752cc4"
    goog-gke-cluster-id-base32            = "a4jna3p5crfzrmfhcyvepj3e4qzow4nupf3ew5eyu3lovcossaiq"
    goog-gke-node                         = ""
    goog-gke-node-pool-provisioning-model = "on-demand"
    goog-gke-volume                       = ""
    goog-k8s-cluster-location             = "europe-west1-b"
    goog-k8s-cluster-name                 = "gke-cluster-02-st"
    goog-k8s-node-pool-name               = "default-pool"
    managed-by-cnrm                       = "true"
    mesh_id                               = "proj-279171147660"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos", "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/licenses/gke-node", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos-pcid", "https://www.googleapis.com/compute/v1/projects/cos-cloud-shielded/global/licenses/shielded-cos"]
  name                      = "gke-gke-cluster-02-st-default-pool-d5a67ba4-qxfx"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-02-4cd235752cc4"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "europe-west1-b"
}
# terraform import google_compute_disk.gke_gke_cluster_02_st_default_pool_d5a67ba4_qxfx projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/disks/gke-gke-cluster-02-st-default-pool-d5a67ba4-qxfx

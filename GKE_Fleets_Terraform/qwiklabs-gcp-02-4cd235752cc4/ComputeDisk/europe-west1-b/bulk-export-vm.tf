resource "google_compute_disk" "bulk_export_vm" {
  guest_os_features {
    type = "GVNIC"
  }

  guest_os_features {
    type = "SEV_CAPABLE"
  }

  guest_os_features {
    type = "SEV_LIVE_MIGRATABLE_V2"
  }

  guest_os_features {
    type = "UEFI_COMPATIBLE"
  }

  guest_os_features {
    type = "VIRTIO_SCSI_MULTIQUEUE"
  }

  image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-12-bookworm-v20251209"

  labels = {
    managed-by-cnrm = "true"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-12-bookworm"]
  name                      = "bulk-export-vm"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-02-4cd235752cc4"
  size                      = 10
  type                      = "pd-standard"
  zone                      = "europe-west1-b"
}
# terraform import google_compute_disk.bulk_export_vm projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/disks/bulk-export-vm

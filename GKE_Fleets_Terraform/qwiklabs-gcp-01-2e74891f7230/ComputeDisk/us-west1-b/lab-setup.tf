resource "google_compute_disk" "lab_setup" {
  guest_os_features {
    type = "GVNIC"
  }

  guest_os_features {
    type = "UEFI_COMPATIBLE"
  }

  guest_os_features {
    type = "VIRTIO_SCSI_MULTIQUEUE"
  }

  image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20251209"

  labels = {
    managed-by-cnrm = "true"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-11-bullseye"]
  name                      = "lab-setup"
  physical_block_size_bytes = 4096
  project                   = "qwiklabs-gcp-01-2e74891f7230"
  size                      = 100
  type                      = "pd-standard"
  zone                      = "us-west1-b"
}
# terraform import google_compute_disk.lab_setup projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/disks/lab-setup

resource "google_storage_bucket" "qwiklabs_gcp_04_2342d4fc79d9" {
  force_destroy = false

  labels = {
    managed-by-cnrm = "true"
  }

  location                 = "US"
  name                     = "qwiklabs-gcp-04-2342d4fc79d9"
  project                  = "qwiklabs-gcp-04-2342d4fc79d9"
  public_access_prevention = "inherited"

  soft_delete_policy {
    retention_duration_seconds = 604800
  }

  storage_class = "STANDARD"
}
# terraform import google_storage_bucket.qwiklabs_gcp_04_2342d4fc79d9 qwiklabs-gcp-04-2342d4fc79d9

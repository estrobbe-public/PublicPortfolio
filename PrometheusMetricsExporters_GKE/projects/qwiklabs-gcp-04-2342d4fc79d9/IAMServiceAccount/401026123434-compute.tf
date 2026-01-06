resource "google_service_account" "401026123434_compute" {
  account_id   = "401026123434-compute"
  display_name = "Compute Engine default service account"
  project      = "qwiklabs-gcp-04-2342d4fc79d9"
}
# terraform import google_service_account.401026123434_compute projects/qwiklabs-gcp-04-2342d4fc79d9/serviceAccounts/401026123434-compute@qwiklabs-gcp-04-2342d4fc79d9.iam.gserviceaccount.com

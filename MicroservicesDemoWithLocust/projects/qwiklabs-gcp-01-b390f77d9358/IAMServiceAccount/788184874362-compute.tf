resource "google_service_account" "788184874362_compute" {
  account_id   = "788184874362-compute"
  display_name = "Compute Engine default service account"
  project      = "qwiklabs-gcp-01-b390f77d9358"
}
# terraform import google_service_account.788184874362_compute projects/qwiklabs-gcp-01-b390f77d9358/serviceAccounts/788184874362-compute@qwiklabs-gcp-01-b390f77d9358.iam.gserviceaccount.com

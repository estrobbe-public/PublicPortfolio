resource "google_service_account" "qwiklabs_gcp_01_b390f77d9358" {
  account_id   = "qwiklabs-gcp-01-b390f77d9358"
  display_name = "Qwiklabs User Service Account"
  project      = "qwiklabs-gcp-01-b390f77d9358"
}
# terraform import google_service_account.qwiklabs_gcp_01_b390f77d9358 projects/qwiklabs-gcp-01-b390f77d9358/serviceAccounts/qwiklabs-gcp-01-b390f77d9358@qwiklabs-gcp-01-b390f77d9358.iam.gserviceaccount.com

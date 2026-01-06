resource "google_service_account" "qwiklabs_gcp_01_2e74891f7230" {
  account_id   = "qwiklabs-gcp-01-2e74891f7230"
  display_name = "Qwiklabs User Service Account"
  project      = "qwiklabs-gcp-01-2e74891f7230"
}
# terraform import google_service_account.qwiklabs_gcp_01_2e74891f7230 projects/qwiklabs-gcp-01-2e74891f7230/serviceAccounts/qwiklabs-gcp-01-2e74891f7230@qwiklabs-gcp-01-2e74891f7230.iam.gserviceaccount.com

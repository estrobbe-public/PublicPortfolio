resource "google_service_account" "qwiklabs_gcp_02_4cd235752cc4" {
  account_id   = "qwiklabs-gcp-02-4cd235752cc4"
  display_name = "Qwiklabs User Service Account"
  project      = "qwiklabs-gcp-02-4cd235752cc4"
}
# terraform import google_service_account.qwiklabs_gcp_02_4cd235752cc4 projects/qwiklabs-gcp-02-4cd235752cc4/serviceAccounts/qwiklabs-gcp-02-4cd235752cc4@qwiklabs-gcp-02-4cd235752cc4.iam.gserviceaccount.com

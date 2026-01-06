resource "google_service_account" "qwiklabs_gcp_04_2342d4fc79d9" {
  account_id   = "qwiklabs-gcp-04-2342d4fc79d9"
  display_name = "Qwiklabs User Service Account"
  project      = "qwiklabs-gcp-04-2342d4fc79d9"
}
# terraform import google_service_account.qwiklabs_gcp_04_2342d4fc79d9 projects/qwiklabs-gcp-04-2342d4fc79d9/serviceAccounts/qwiklabs-gcp-04-2342d4fc79d9@qwiklabs-gcp-04-2342d4fc79d9.iam.gserviceaccount.com

resource "google_service_account" "279171147660_compute" {
  account_id   = "279171147660-compute"
  display_name = "Compute Engine default service account"
  project      = "qwiklabs-gcp-02-4cd235752cc4"
}
# terraform import google_service_account.279171147660_compute projects/qwiklabs-gcp-02-4cd235752cc4/serviceAccounts/279171147660-compute@qwiklabs-gcp-02-4cd235752cc4.iam.gserviceaccount.com

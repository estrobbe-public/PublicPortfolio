resource "google_project" "qwiklabs_gcp_02_4cd235752cc4" {
  auto_create_network = true
  billing_account     = "01E7D4-14A26D-8E8B47"
  folder_id           = "125430737939"

  labels = {
    fleet           = "gcpd"
    managed-by-cnrm = "true"
  }

  name       = "qwiklabs-gcp-02-4cd235752cc4"
  project_id = "qwiklabs-gcp-02-4cd235752cc4"
}
# terraform import google_project.qwiklabs_gcp_02_4cd235752cc4 projects/qwiklabs-gcp-02-4cd235752cc4

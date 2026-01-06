resource "google_project" "qwiklabs_gcp_01_2e74891f7230" {
  auto_create_network = true
  billing_account     = "018768-94F29B-FBE0B6"
  folder_id           = "9388141951"

  labels = {
    fleet           = "gcpd"
    managed-by-cnrm = "true"
  }

  name       = "qwiklabs-gcp-01-2e74891f7230"
  project_id = "qwiklabs-gcp-01-2e74891f7230"
}
# terraform import google_project.qwiklabs_gcp_01_2e74891f7230 projects/qwiklabs-gcp-01-2e74891f7230

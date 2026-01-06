resource "google_project" "qwiklabs_gcp_04_2342d4fc79d9" {
  auto_create_network = true
  billing_account     = "011B12-9C8909-6AEF66"
  folder_id           = "126186744877"

  labels = {
    fleet           = "gcpd"
    managed-by-cnrm = "true"
  }

  name       = "qwiklabs-gcp-04-2342d4fc79d9"
  project_id = "qwiklabs-gcp-04-2342d4fc79d9"
}
# terraform import google_project.qwiklabs_gcp_04_2342d4fc79d9 projects/qwiklabs-gcp-04-2342d4fc79d9

resource "google_project_service" "dataform_googleapis_com" {
  project = "279171147660"
  service = "dataform.googleapis.com"
}
# terraform import google_project_service.dataform_googleapis_com 279171147660/dataform.googleapis.com

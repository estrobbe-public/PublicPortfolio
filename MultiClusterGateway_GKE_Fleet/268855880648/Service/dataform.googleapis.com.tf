resource "google_project_service" "dataform_googleapis_com" {
  project = "268855880648"
  service = "dataform.googleapis.com"
}
# terraform import google_project_service.dataform_googleapis_com 268855880648/dataform.googleapis.com

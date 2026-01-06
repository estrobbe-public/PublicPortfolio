resource "google_project_service" "dataprocrm_googleapis_com" {
  project = "401026123434"
  service = "dataprocrm.googleapis.com"
}
# terraform import google_project_service.dataprocrm_googleapis_com 401026123434/dataprocrm.googleapis.com

resource "google_project_service" "storage_api_googleapis_com" {
  project = "268855880648"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 268855880648/storage-api.googleapis.com

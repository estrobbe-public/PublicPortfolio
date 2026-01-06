resource "google_project_service" "storage_api_googleapis_com" {
  project = "279171147660"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 279171147660/storage-api.googleapis.com

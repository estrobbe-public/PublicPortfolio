resource "google_project_service" "storage_api_googleapis_com" {
  project = "401026123434"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 401026123434/storage-api.googleapis.com

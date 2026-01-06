resource "google_project_service" "storage_api_googleapis_com" {
  project = "788184874362"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 788184874362/storage-api.googleapis.com

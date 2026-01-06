resource "google_project_service" "storage_component_googleapis_com" {
  project = "401026123434"
  service = "storage-component.googleapis.com"
}
# terraform import google_project_service.storage_component_googleapis_com 401026123434/storage-component.googleapis.com

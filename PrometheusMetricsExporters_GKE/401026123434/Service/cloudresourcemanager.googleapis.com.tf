resource "google_project_service" "cloudresourcemanager_googleapis_com" {
  project = "401026123434"
  service = "cloudresourcemanager.googleapis.com"
}
# terraform import google_project_service.cloudresourcemanager_googleapis_com 401026123434/cloudresourcemanager.googleapis.com

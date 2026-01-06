resource "google_project_service" "deploymentmanager_googleapis_com" {
  project = "401026123434"
  service = "deploymentmanager.googleapis.com"
}
# terraform import google_project_service.deploymentmanager_googleapis_com 401026123434/deploymentmanager.googleapis.com

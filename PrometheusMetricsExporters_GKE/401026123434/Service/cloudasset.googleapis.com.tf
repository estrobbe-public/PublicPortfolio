resource "google_project_service" "cloudasset_googleapis_com" {
  project = "401026123434"
  service = "cloudasset.googleapis.com"
}
# terraform import google_project_service.cloudasset_googleapis_com 401026123434/cloudasset.googleapis.com

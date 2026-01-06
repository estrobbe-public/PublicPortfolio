resource "google_project_service" "compute_googleapis_com" {
  project = "401026123434"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 401026123434/compute.googleapis.com

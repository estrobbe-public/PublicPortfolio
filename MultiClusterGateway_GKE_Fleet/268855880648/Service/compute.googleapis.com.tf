resource "google_project_service" "compute_googleapis_com" {
  project = "268855880648"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 268855880648/compute.googleapis.com

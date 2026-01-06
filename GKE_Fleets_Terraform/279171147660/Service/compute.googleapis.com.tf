resource "google_project_service" "compute_googleapis_com" {
  project = "279171147660"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 279171147660/compute.googleapis.com

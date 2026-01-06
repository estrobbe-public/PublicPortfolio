resource "google_project_service" "compute_googleapis_com" {
  project = "788184874362"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 788184874362/compute.googleapis.com

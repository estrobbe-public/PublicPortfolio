resource "google_project_service" "autoscaling_googleapis_com" {
  project = "279171147660"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 279171147660/autoscaling.googleapis.com

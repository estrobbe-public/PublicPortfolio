resource "google_project_service" "autoscaling_googleapis_com" {
  project = "268855880648"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 268855880648/autoscaling.googleapis.com

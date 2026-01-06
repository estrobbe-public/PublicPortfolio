resource "google_project_service" "monitoring_googleapis_com" {
  project = "279171147660"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 279171147660/monitoring.googleapis.com

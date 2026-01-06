resource "google_project_service" "monitoring_googleapis_com" {
  project = "268855880648"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 268855880648/monitoring.googleapis.com

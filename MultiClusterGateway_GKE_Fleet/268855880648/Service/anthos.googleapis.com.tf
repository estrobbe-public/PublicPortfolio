resource "google_project_service" "anthos_googleapis_com" {
  project = "268855880648"
  service = "anthos.googleapis.com"
}
# terraform import google_project_service.anthos_googleapis_com 268855880648/anthos.googleapis.com

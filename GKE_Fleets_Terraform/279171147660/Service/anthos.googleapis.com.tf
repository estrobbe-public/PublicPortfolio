resource "google_project_service" "anthos_googleapis_com" {
  project = "279171147660"
  service = "anthos.googleapis.com"
}
# terraform import google_project_service.anthos_googleapis_com 279171147660/anthos.googleapis.com

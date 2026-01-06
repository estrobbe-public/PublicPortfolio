resource "google_project_service" "dataplex_googleapis_com" {
  project = "279171147660"
  service = "dataplex.googleapis.com"
}
# terraform import google_project_service.dataplex_googleapis_com 279171147660/dataplex.googleapis.com

resource "google_project_service" "dataplex_googleapis_com" {
  project = "268855880648"
  service = "dataplex.googleapis.com"
}
# terraform import google_project_service.dataplex_googleapis_com 268855880648/dataplex.googleapis.com

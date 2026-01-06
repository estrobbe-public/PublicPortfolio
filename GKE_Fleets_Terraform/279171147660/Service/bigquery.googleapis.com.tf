resource "google_project_service" "bigquery_googleapis_com" {
  project = "279171147660"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 279171147660/bigquery.googleapis.com

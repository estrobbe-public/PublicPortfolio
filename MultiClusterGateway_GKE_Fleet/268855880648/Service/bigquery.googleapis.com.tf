resource "google_project_service" "bigquery_googleapis_com" {
  project = "268855880648"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 268855880648/bigquery.googleapis.com

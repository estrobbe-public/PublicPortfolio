resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "268855880648"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 268855880648/bigquerystorage.googleapis.com

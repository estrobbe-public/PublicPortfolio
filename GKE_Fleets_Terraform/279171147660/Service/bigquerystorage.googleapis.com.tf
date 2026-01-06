resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "279171147660"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 279171147660/bigquerystorage.googleapis.com

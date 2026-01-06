resource "google_project_service" "pubsub_googleapis_com" {
  project = "279171147660"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 279171147660/pubsub.googleapis.com

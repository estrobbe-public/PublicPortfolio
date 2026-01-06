resource "google_project_service" "pubsub_googleapis_com" {
  project = "268855880648"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 268855880648/pubsub.googleapis.com

resource "google_project_service" "pubsub_googleapis_com" {
  project = "401026123434"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 401026123434/pubsub.googleapis.com

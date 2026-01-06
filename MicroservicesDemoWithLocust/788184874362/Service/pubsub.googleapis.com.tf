resource "google_project_service" "pubsub_googleapis_com" {
  project = "788184874362"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 788184874362/pubsub.googleapis.com

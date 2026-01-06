resource "google_project_service" "oslogin_googleapis_com" {
  project = "788184874362"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 788184874362/oslogin.googleapis.com

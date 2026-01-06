resource "google_project_service" "oslogin_googleapis_com" {
  project = "401026123434"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 401026123434/oslogin.googleapis.com

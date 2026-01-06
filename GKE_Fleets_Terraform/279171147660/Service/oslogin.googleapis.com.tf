resource "google_project_service" "oslogin_googleapis_com" {
  project = "279171147660"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 279171147660/oslogin.googleapis.com

resource "google_project_service" "oslogin_googleapis_com" {
  project = "268855880648"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 268855880648/oslogin.googleapis.com

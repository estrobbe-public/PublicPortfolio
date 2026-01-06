resource "google_project_service" "dns_googleapis_com" {
  project = "268855880648"
  service = "dns.googleapis.com"
}
# terraform import google_project_service.dns_googleapis_com 268855880648/dns.googleapis.com

resource "google_project_service" "dns_googleapis_com" {
  project = "279171147660"
  service = "dns.googleapis.com"
}
# terraform import google_project_service.dns_googleapis_com 279171147660/dns.googleapis.com

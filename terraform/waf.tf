resource "cloudflare_ruleset" "zone_custom_firewall" {
  zone_id     = var.cloudflare_zone_id
  name        = "Custom Firewall for Overseerr"
  description = ""
  kind        = "zone"
  phase       = "http_request_firewall_custom"

  rules {
    action      = "block"
    description = "Block overseerr requests from outside the Netherlands"
    expression  = "(http.request.full_uri contains \"overseerr.rubenclaessens.nl\" and ip.geoip.country ne \"NL\")"
    enabled     = true
  }
}

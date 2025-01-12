resource "cloudflare_ruleset" "zone_custom_firewall" {
  zone_id     = var.cloudflare_zone_id
  name        = "Custom Firewall for Services"
  description = ""
  kind        = "zone"
  phase       = "http_request_firewall_custom"

  rules {
    action      = "block"
    description = "Block requests from outside the Netherlands"
    expression  = "(http.request.full_uri contains \"overseerr.rubenclaessens.nl\" or http.request.full_uri contains \"homeassistant.rubenclaessens.nl\" or http.request.full_uri contains \"authentik.rubenclaessens.nl\") and ip.geoip.country ne \"NL\""
    enabled     = true
  }
}

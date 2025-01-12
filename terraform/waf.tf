resource "cloudflare_ruleset" "zone_custom_firewall" {
  zone_id     = var.cloudflare_zone_id
  name        = "Custom Firewall for Services"
  description = ""
  kind        = "zone"
  phase       = "http_request_firewall_custom"

  rules {
    action      = "block"
    description = "Block requests to all subdomains except www from outside the Netherlands"
    expression  = "(http.host != \"www.rubenclaessens.nl\" and ip.geoip.country ne \"NL\")"
    enabled     = true
  }
}

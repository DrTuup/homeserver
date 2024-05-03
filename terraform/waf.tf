resource "cloudflare_ruleset" "vaultwarden_geoblock" {
  zone_id     = var.cloudflare_zone_id
  name        = "Phase entry point ruleset for custom rules in my zone"
  description = ""
  kind        = "zone"
  phase       = "http_request_firewall_custom"

  rules {
    action      = "block"
    expression  = "(ip.geoip.country ne \"NL\" and http.host eq \"vaultwarden.rubenclaessens.nl\")"
    description = "Block every country except NL when visiting vaultwarden.rubenclaessens.nl"
    enabled     = true
  }
}
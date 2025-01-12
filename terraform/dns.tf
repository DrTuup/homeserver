resource "cloudflare_record" "portfolio" {
  name    = "rubenclaessens.nl"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "76.76.21.21"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "www_portfolio" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "rubenclaessens.nl"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "overseerr" {
  name    = "overseerr"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  content = cloudflare_tunnel.hydro.cname
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "homeassistant" {
  name    = "homeassistant"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  content = cloudflare_tunnel.hydro.cname
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "authentik" {
  name    = "authentik"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  content = cloudflare_tunnel.hydro.cname
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "email_spoofing_prevention_1" {
  name    = "rubenclaessens.nl"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "v=spf1 -all"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "email_spoofing_prevention_2" {
  name    = "rubenclaessens.nl"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "v=DKIM1; p="
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "email_spoofing_prevention_3" {
  name    = "rubenclaessens.nl"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:claessensruben2812@gmail.com"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "portfolio" {
  name    = "rubenclaessens.nl"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "76.76.21.21"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "datavisualization" {
  name    = "dataviz"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "zm005-2023b3.github.io"
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
  value   = cloudflare_tunnel.hydro.cname
  zone_id = var.cloudflare_zone_id

}


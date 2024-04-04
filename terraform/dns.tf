resource "cloudflare_record" "portfolio" {
  name    = "rubenclaessens.nl"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "76.76.21.21"
  zone_id = "568a460892921afa99c22339c47da5b2"
}

resource "cloudflare_record" "datavisualization" {
  name    = "dataviz"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "drtuup.github.io"
  zone_id = "568a460892921afa99c22339c47da5b2"
}

resource "cloudflare_record" "overseerr" {
  name    = "overseerr"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "b182855d-e127-449f-9d3f-9384c85d1002.cfargotunnel.com"
  zone_id = "568a460892921afa99c22339c47da5b2"
}

resource "cloudflare_record" "www_portfolio" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "rubenclaessens.nl"
  zone_id = "568a460892921afa99c22339c47da5b2"
}


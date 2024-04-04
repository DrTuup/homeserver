resource "cloudflare_record" "terraform_managed_resource_3ebcb45f4c3bef8310ba64f2a3f45d1f" {
  name    = "rubenclaessens.nl"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "76.76.21.21"
  zone_id = "568a460892921afa99c22339c47da5b2"
}

resource "cloudflare_record" "terraform_managed_resource_ec80dc7e413ad30c6c2341283202211b" {
  name    = "dataviz"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "drtuup.github.io"
  zone_id = "568a460892921afa99c22339c47da5b2"
}

resource "cloudflare_record" "terraform_managed_resource_b507006b5104c52cd4bb041c1c623936" {
  name    = "overseerr"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "b182855d-e127-449f-9d3f-9384c85d1002.cfargotunnel.com"
  zone_id = "568a460892921afa99c22339c47da5b2"
}

resource "cloudflare_record" "terraform_managed_resource_9384f698b6dc47b3b9352cc5108a9133" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "rubenclaessens.nl"
  zone_id = "568a460892921afa99c22339c47da5b2"
}


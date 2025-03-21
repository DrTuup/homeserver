resource "random_password" "tunnel_secret" {
  length  = 64
  special = true
}

resource "cloudflare_zero_trust_tunnel_cloudflared" "rpi-01" {
  account_id    = var.cloudflare_account_id
  name          = "rpi-01"
  tunnel_secret = base64sha256(random_password.tunnel_secret.result)
  config_src    = "cloudflare"
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "rpi-01" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_zero_trust_tunnel_cloudflared.rpi-01.id
  source     = "cloudflare"

  config = {
    ingress = [{
      hostname = "overseerr.${var.cloudflare_zone_name}"
      service  = "https://192.168.1.30"
      origin_request = {
        no_tls_verify = true
      }
      }, {
      hostname = "homeassistant.${var.cloudflare_zone_name}"
      service  = "https://192.168.1.30"
      origin_request = {
        no_tls_verify = true
      }
      },
      {
        service = "http_status:404"
    }]
  }
}

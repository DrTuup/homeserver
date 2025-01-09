resource "random_password" "tunnel_secret" {
  length  = 64
  special = true
}

resource "cloudflare_tunnel" "hydro" {
  account_id = var.cloudflare_account_id
  name       = "hydro"
  secret     = base64sha256(random_password.tunnel_secret.result)
}

resource "cloudflare_tunnel_config" "hydro" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.hydro.id

  config {
    ingress_rule {
      hostname = "overseerr.${var.cloudflare_zone_name}"
      service  = "https://192.168.1.20"
      origin_request {
        no_tls_verify = true
      }
    }
    ingress_rule {
      hostname = "homeassistant.${var.cloudflare_zone_name}"
      service  = "https://192.168.1.20"
      origin_request {
        no_tls_verify = true
      }
    }

    ingress_rule {
      service = "http_status:404"
    }
  }
}

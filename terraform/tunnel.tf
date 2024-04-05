resource "random_password" "tunnel_secret" {
  length  = 64
  special = true
}

resource "cloudflare_tunnel" "hydro" {
  account_id = var.cloudflare_account_id
  name       = "hydro"
  secret     = random_password.tunnel_secret.result
}

resource "cloudflare_tunnel_config" "example_config" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.hydro.id

  config {
    ingress_rule {
      hostname = "overseerr.${var.cloudflare_zone_name}"
      service  = "http://192.168.1.20"
      origin_request {
        no_tls_verify = false
      }
    }
    ingress_rule {
      service = "http_status:404"
    }
  }
}

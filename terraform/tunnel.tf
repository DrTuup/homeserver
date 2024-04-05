resource "cloudflare_tunnel" "example" {
  account_id = "82f3291714701b7bcca7a80429e92f8c"
  name       = "my-tunnel"
  secret     = "AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg="
}

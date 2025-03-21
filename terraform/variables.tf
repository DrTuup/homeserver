variable "cloudflare_zone_id" {
  description = "The ID of the Cloudflare zone to use"
  type        = string
  default     = "568a460892921afa99c22339c47da5b2"
}

variable "cloudflare_account_id" {
  description = "The ID of the Cloudflare account to use"
  type        = string
  default     = "82f3291714701b7bcca7a80429e92f8c"
}

variable "cloudflare_zone_name" {
  description = "The name of the Cloudflare zone to use"
  type        = string
  default     = "rubenclaessens.nl"
}

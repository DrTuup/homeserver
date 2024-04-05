variable "cloudflare_zone_id" {
  description = "The ID of the Cloudflare zone to use"
  type        = string
  default     = "568a460892921afa99c22339c47da5b2"
}

variable "cloudflare_account_id" {
  description = "The ID of the Cloudflare account to use"
  type        = string
  default     = "f037e56e89293a057740de681ac9abbe"
}

variable "cloudflare_zone_name" {
  description = "The name of the Cloudflare zone to use"
  type        = string
  default     = "rubenclaessens.nl"

}

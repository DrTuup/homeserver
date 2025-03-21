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

variable "mailgun_sending_records" {
  description = "List of mailgun sending records"
  type = map(object({
    type     = string,
    hostname = string
    content  = string
    })
  )
  default = {
    mailgunorg = {
      type     = "TXT"
      hostname = "mail.rubenclaessens.nl"
      content  = "v=spf1 include:mailgun.org ~all"
    },
    domainkey1 = {
      type     = "CNAME"
      hostname = "pdk1._domainkey.mail.rubenclaessens.nl"
      content  = "pdk1._domainkey.f5d8b.dkim2.eu.mgsend.org"
    },
    domainkey2 = {
      type     = "CNAME"
      hostname = "pdk2._domainkey.mail.rubenclaessens.nl"
      content  = "pdk2._domainkey.f5d8b.dkim2.eu.mgsend.org"
    }
  }
}

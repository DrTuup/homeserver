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

variable "mailgun_records" {
  description = "List of mailgun DNS-records"
  type = map(object({
    type     = string,
    hostname = string
    content  = string
    })
  )
  default = {
    sending_mailgunorg = {
      type     = "TXT"
      hostname = "mail.rubenclaessens.nl"
      content  = "v=spf1 include:mailgun.org ~all"
    },
    sending_domainkey1 = {
      type     = "CNAME"
      hostname = "pdk1._domainkey.mail.rubenclaessens.nl"
      content  = "pdk1._domainkey.f5d8b.dkim2.eu.mgsend.org"
    },
    sending_domainkey2 = {
      type     = "CNAME"
      hostname = "pdk2._domainkey.mail.rubenclaessens.nl"
      content  = "pdk2._domainkey.f5d8b.dkim2.eu.mgsend.org"
    },
    receiving_mxa = {
      type     = "MX"
      hostname = "mail.rubenclaessens.nl"
      content  = "mxa.eu.mailgun.org"
    }
    receiving_mxb = {
      type     = "MX"
      hostname = "mail.rubenclaessens.nl"
      content  = "mxb.eu.mailgun.org"
    }
    tracking_email = {
      type     = "CNAME"
      hostname = "email.mail.rubenclaessens.nl"
      content  = "eu.mailgun.org"
    }
    auth_dmarc = {
      type     = "TXT"
      hostname = "_dmarc.mail.rubenclaessens.nl"
      content  = "v=DMARC1; p=none; pct=100; fo=1; ri=3600; rua=mailto:f6891040@dmarc.mailgun.org,mailto:d54f4589@inbox.ondmarc.com; ruf=mailto:f6891040@dmarc.mailgun.org,mailto:d54f4589@inbox.ondmarc.com;"

    }
  }
}

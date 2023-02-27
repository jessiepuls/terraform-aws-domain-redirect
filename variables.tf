variable "redirect_config" {
  type = map(object({
    origin_domain = object({
      domain = string
      record_config = optional(object({
        hosted_zone = string
        type        = string
        ttl         = number
      }))
    })

    redirect_domain = object({
      domain = string
      record_config = optional(object({
        hosted_zone = string
        type        = string
        ttl         = number
      }))
    })

    enable_https = bool
  }))
}

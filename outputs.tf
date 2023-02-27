output "website_endpoints" {
  value = [
    for k, v in var.redirect_config : aws_s3_bucket_website_configuration.redirect_config[k].website_domain
  ]
}

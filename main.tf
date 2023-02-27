resource "aws_s3_bucket" "redirect" {
  for_each = var.redirect_config
  bucket   = each.value.origin_domain.domain
}

resource "aws_s3_bucket_website_configuration" "redirect_config" {
  for_each = var.redirect_config
  bucket   = aws_s3_bucket.redirect[each.key].id
  redirect_all_requests_to {
    host_name = each.value.redirect_domain.domain
  }
}

resource "aws_s3_bucket_acl" "redirect_acl" {
  for_each = var.redirect_config
  bucket   = aws_s3_bucket.redirect[each.key].id
  acl      = "private"
}

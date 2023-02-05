resource "aws_route53_zone" "hosted_zone" {
  name = "kanyexola.me"
}

#create a record set inside the hosted zone created earlier
resource "aws_route53_record" "record" {
  zone_id = aws_route53_zone.hosted_zone.zone_id
  name    = "www"
  type    = "A"

  alias {
    name                   = aws_lb.Application_LB.dns_name
    zone_id                = aws_lb.Application_LB.zone_id
    evaluate_target_health = true
  }
}

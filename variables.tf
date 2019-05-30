variable "domain_name" {
  description = "The domain name for the public DNS zone."
}
variable "private_domain_name" {
  description = "The domain name for the private DNS zone."
}

variable "private_zone_vpcs" {
  type = list(object({vpc_id=string, vpc_region=string}))
  description = "The VPCs to attach the private DNS zone to."
}

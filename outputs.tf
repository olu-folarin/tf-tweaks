# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "domain-name" {
  value = aws_instance.public_node.public_dns
}

output "application-url" {
  value = "${aws_instance.public_node.public_dns}/index.php"
}

output "ipv6_aa" {
  value       = aws_instance.public_node.ipv6_address_count
  description = "number of the ipv6 address"
}
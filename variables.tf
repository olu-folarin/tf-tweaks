variable "whitelisted_ips" {
  description = "List of IP addresses to whitelist"
  type        = list(string)
  default = [
    "203.0.113.1/32", "203.0.113.2/32", "203.0.113.3/32", "203.0.113.4/32",
    "203.0.113.5/32", "203.0.113.6/32", "203.0.113.7/32", "203.0.113.8/32",
    "203.0.113.9/32", "203.0.113.10/32", "203.0.113.11/32", "203.0.113.12/32",
    "203.0.113.13/32", "203.0.113.14/32", "203.0.113.15/32", "203.0.113.16/32",
    "203.0.113.17/32", "203.0.113.18/32", "203.0.113.19/32", "203.0.113.20/32"
  ]
}
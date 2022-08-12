variable "tags" {
  description = "map"
  type        = map(any)
  default = {
    cloud_provider = "AWS"
    region         = "USA"
    secure         = "Yes"
  }
}

output "mapValues" {
  value = [for first, second in var.tags : "${first} is having value ${second}"]
}
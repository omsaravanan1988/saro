variable "vnetprefix" {
  description = "vnetrange"
  type = list (string)
  default = [ "10.0.0.0/16" ]

variable "subnetprefix" {
  description = "subnetrange"
  type = int
  default = [ "10.0.1.0/24" ]
}

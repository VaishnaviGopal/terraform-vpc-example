provider "ibm" {
  ibmcloud_api_key      = var.ibmcloud_api_key
}

variable "ibmcloud_api_key" {
  type = string
}

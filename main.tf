variable "ibmcloud_api_key" {
  description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://cloud.ibm.com/iam#/apikeys"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  generation       = 2
  region           = "us-south"
}

resource "ibm_is_vpc" "example-vpc" {
  name           = "newtestnewtestvpc"
}

resource "ibm_is_security_group_rule" "worker-node-inbound" {
  group     = ibm_is_vpc.example-vpc.default_security_group
  direction = "inbound"
  
  tcp {
    port_min = 30000
    port_max = 32767
  }
}

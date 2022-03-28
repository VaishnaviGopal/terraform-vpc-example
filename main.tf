terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}
provider "ibm" {
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

output "sg_rule_id" {
value = {
			   "is_resource" = "true"
			   "resource_controller_url" = "<resource_url>"
			   "resource_icon_url" = "<>"
			   "resource_id" = "<resource_id>"
			   "resource_name" = "<itemname>"
         "original_value" = var.condition ? 1 : 0
		}
}

variable "condition" {
default = true
}

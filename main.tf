provider "ibm" {
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

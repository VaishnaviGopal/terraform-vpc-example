# terraform-vpc-example

Terraform example for provisioning an IBM Cloud VPC with a security group and inbound
rules for Kubernetes worker node traffic — using the `IBM-Cloud/ibm` Terraform provider.

Written as a companion to my contributions to
[terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm),
where I owned the VPC infrastructure module (top-5 contributor, 2020–2021).

---

## What this provisions

- An IBM Cloud VPC (`ibm_is_vpc`)
- Inbound security group rule on the VPC's default security group
  — opens TCP ports 30000–32767 (Kubernetes NodePort range) for worker node traffic
- Structured output block demonstrating Terraform's conditional expression and
  resource metadata output patterns

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.0
- An [IBM Cloud account](https://cloud.ibm.com/registration)
- IBM Cloud API key exported as an environment variable:

```bash
export IC_API_KEY="your-ibm-cloud-api-key"
```

## Usage

```bash
git clone https://github.com/VaishnaviGopal/terraform-vpc-example
cd terraform-vpc-example
terraform init
terraform plan
terraform apply
```

## Resources created

| Resource | Type | Description |
|---|---|---|
| `example-vpc` | `ibm_is_vpc` | IBM Cloud VPC |
| `worker-node-inbound` | `ibm_is_security_group_rule` | Inbound TCP 30000–32767 on default SG |

## Related

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) —
  the IBM Cloud Terraform provider (I'm a top-5 contributor; built the VPC module)
- [IBM Cloud VPC docs](https://cloud.ibm.com/docs/vpc)

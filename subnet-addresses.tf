module "subnet-addrs" {
  source = "hashicorp/subnets/cidr"

  base_cidr_block = var.vpc_cidr
  networks = [
    {
      name     = "pub-az1"
      new_bits = 4
    },
    {
      name     = "pub-az2"
      new_bits = 4
    },
    {
      name     = "pub-az3"
      new_bits = 4
    },
    {
      name     = "prv-az1"
      new_bits = 4
    },
    {
      name     = "prv-az2"
      new_bits = 4
    },
    {
      name     = "prv-az3"
      new_bits = 4
    }
  ]
}

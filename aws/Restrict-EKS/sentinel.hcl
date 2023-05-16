module "tfplan-functions" {
  source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "../aws-functions/aws-functions.sentinel"
}

policy "restrict-eks-node-group-max-size" {
  source = "./restrict-eks-node-group-max-size.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "restrict-eks-node-instance-type" {
  source = "./restrict-eks-node-group-instance-type.sentinel"
  enforcement_level = "hard-mandatory"
}

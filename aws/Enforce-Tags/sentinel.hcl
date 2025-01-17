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

policy "check-ec2-environment-tag" {
  source = "../check-ec2-environment-tag.sentinel"
  enforcement_level = "advisory"
}

policy "enforce-mandatory-tags" {
  source = "../enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

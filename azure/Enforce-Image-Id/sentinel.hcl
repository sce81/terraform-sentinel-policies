module "tfplan-functions" {
  source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
  source = "../azure-functions/azure-functions.sentinel"
}

policy "enforce-image-id" {
    source = "./restrict-vm-image-id.sentinel"
    enforcement_level = "advisory"
}
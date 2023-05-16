module "tfplan-functions" {
  source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions"{
  source = "../../common-functions/tfconfig-functions/tfrun-functions.sentinel"
  }

policy "require-all-resources-from-pmr" {
    source = "../require-all-resources-from-pmr.sentinel"
    enforcement_level = "soft-mandatory"
}

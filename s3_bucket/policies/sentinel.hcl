module "tfplan-functions" {
  source = "common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
  source = "common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "restrict-s3-bucket-policies" {
  source = "./restrict-s3-bucket-policies.sentinel"
  enforcement_level = "soft-mandatory"
}

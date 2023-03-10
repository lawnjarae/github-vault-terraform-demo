module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

// module "tfstate-functions" {
//   source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
// }

module "tfconfig-functions" {
  source = "../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

// module "aws-functions" {
//   source = "aws-functions/aws-functions.sentinel"
// }

mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "../../testdata/mock-tfconfig-failure.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
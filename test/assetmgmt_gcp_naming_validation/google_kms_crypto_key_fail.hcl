module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "google_kms_crypto_key-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}

param "org" {
  value = [ "wf" ]
}

param "country" {
  value = [ "us" ]
}

param "environment" {
  value =   ["prod", "int", "uat", "stage", "dev", "test"] 
}
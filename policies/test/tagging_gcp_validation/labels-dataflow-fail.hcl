module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-dataflow-labels-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}

param "gcp_region" {
  value = [ "us" ]
}

param "owner" {
  value = ["hybridenv"] 
}

param "application_division" {
  value =  ["pci", "paa", "hdpa", "hra", "others"]
}

param "application_name" {
  value =  ["app1","demo"]
}

param "application_role" {
  value = ["app", "web", "auth", "data"]
}

param "environment" {
  value =   ["prod", "int", "uat", "stage", "dev", "test"] 
}

param "au" {
  value = [ "0223092" ]
}


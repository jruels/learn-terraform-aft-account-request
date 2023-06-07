module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account16@innovationinsoftware.com"
    AccountName               = "Account16 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account16@innovationinsoftware.com"
    SSOUserFirstName          = "Account16"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 16/16/2163"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

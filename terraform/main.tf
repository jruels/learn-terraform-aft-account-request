module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account15@innovationinsoftware.com"
    AccountName               = "Account15 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account15@innovationinsoftware.com"
    SSOUserFirstName          = "Account15"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 15/15/2153"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

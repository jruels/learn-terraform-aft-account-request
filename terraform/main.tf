module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account09@innovationinsoftware.com"
    AccountName               = "Account09 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account09@innovationinsoftware.com"
    SSOUserFirstName          = "Account09"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 09/09/2093"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

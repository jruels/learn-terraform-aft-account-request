module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account02@innovationinsoftware.com"
    AccountName               = "Account02 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account02@innovationinsoftware.com"
    SSOUserFirstName          = "Account02"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 06/07/2023"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

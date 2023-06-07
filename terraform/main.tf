module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account07@innovationinsoftware.com"
    AccountName               = "Account07 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account07@innovationinsoftware.com"
    SSOUserFirstName          = "Account07"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 07/07/2073"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account03@innovationinsoftware.com"
    AccountName               = "Account03 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account03@innovationinsoftware.com"
    SSOUserFirstName          = "Account03"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 06/07/2033"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

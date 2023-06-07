module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account14@innovationinsoftware.com"
    AccountName               = "Account14 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account14@innovationinsoftware.com"
    SSOUserFirstName          = "Account14"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 14/14/2143"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

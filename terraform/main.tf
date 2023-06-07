module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account12@innovationinsoftware.com"
    AccountName               = "Account12 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account12@innovationinsoftware.com"
    SSOUserFirstName          = "Account12"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 12/12/2123"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

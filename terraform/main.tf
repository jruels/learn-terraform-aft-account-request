module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account05@innovationinsoftware.com"
    AccountName               = "Account05 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account05@innovationinsoftware.com"
    SSOUserFirstName          = "Account05"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 05/05/2053"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

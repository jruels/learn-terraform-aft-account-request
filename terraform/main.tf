module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account10@innovationinsoftware.com"
    AccountName               = "Account10 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account10@innovationinsoftware.com"
    SSOUserFirstName          = "Account10"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 10/10/2103"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

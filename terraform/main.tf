module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account11@innovationinsoftware.com"
    AccountName               = "Account11 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account11@innovationinsoftware.com"
    SSOUserFirstName          = "Account11"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 11/11/2113"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

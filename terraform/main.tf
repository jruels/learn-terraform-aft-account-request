module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account20@innovationinsoftware.com"
    AccountName               = "Account20 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account20@innovationinsoftware.com"
    SSOUserFirstName          = "Account20"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 20/20/2203"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

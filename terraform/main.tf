module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account18@innovationinsoftware.com"
    AccountName               = "Account18 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account18@innovationinsoftware.com"
    SSOUserFirstName          = "Account18"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "TF Reusable Code 18/18/2183"
  }

  custom_fields = {
    group = "uhg"
  }

  account_customizations_name = "uhg"
}

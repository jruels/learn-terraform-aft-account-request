module "aft_account_03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-account04@innovationinsoftware.com"
    AccountName               = "Account04 AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "aws-account04@innovationinsoftware.com"
    SSOUserFirstName          = "Account04"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "provision" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Smith"
    change_reason       = "New accounts 20230630"
  }

  custom_fields = {
    group = "aft"
  }

  account_customizations_name = "aft"
}

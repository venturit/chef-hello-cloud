name        "application"
description "Application server configuration"

run_list    "role[base]",
            "recipe[nginx]",
            "recipe[git]",
            "recipe[postgresql::client]",

            "recipe[application]"


override_attributes(
  "nginx" => {
    "default_site_enabled"     => false
  }
)
